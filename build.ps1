foreach ($d in Get-ChildItem(".\automatic") -Directory) {
    $rmPath = Join-Path $d.FullName 'README.md'
	Remove-Item $rmPath -ErrorAction Ignore
	$specPath = Join-Path $d.FullName ($d.Name + ".nuspec")	
	[XML]$specContent = Get-Content $specPath 
	$pkgID = $specContent.package.metadata.id
	$pkgV = $specContent.package.metadata.version
	choco pack $specPath
	$pkgName = "$pkgID.$pkgV.nupkg"
	choco push $pkgName --source https://push.chocolatey.org/
	Remove-Item $pkgName -ErrorAction Ignore
	$rmContent = $specContent.package.metadata.description
	New-Item $rmPath
	Set-Content $rmPath $rmContent
}
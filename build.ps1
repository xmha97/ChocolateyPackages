$pkgDir = '.\automatic'
$armPath = Join-Path $pkgDir 'README.md'
Remove-Item $armPath -ErrorAction Ignore
$armContent = '# Packages'
foreach ($d in Get-ChildItem($pkgDir) -Directory) {
    $prmPath = Join-Path $d.FullName 'README.md'
	Remove-Item $prmPath -ErrorAction Ignore
	$specPath = Join-Path $d.FullName ($d.Name + ".nuspec")	
	[XML]$specContent = Get-Content $specPath 
	$pkgID = $specContent.package.metadata.id
	$pkgV = $specContent.package.metadata.version
	$pkgT = $specContent.package.metadata.title
	choco pack $specPath
	$pkgName = "$pkgID.$pkgV.nupkg"
	choco push $pkgName --source https://push.chocolatey.org/
	Remove-Item $pkgName -ErrorAction Ignore
	$prmContent = $specContent.package.metadata.description
	New-Item $prmPath
	Set-Content $prmPath $prmContent
	$armContent = "$armContent`n[$pkgT](https://github.com/xmha97/chocolatey-coreteampackages/tree/main/automatic/$d)  "
}
New-Item $armPath
Set-Content $armPath $armContent
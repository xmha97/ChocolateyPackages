foreach ($d in Get-ChildItem(".\automatic") -Directory) {
    $rmPath = Join-Path $d.FullName 'README.md'
	Remove-Item $rmPath -ErrorAction Ignore
	$xmlPath = Join-Path $d.FullName ($d.Name + ".nuspec")
	[XML]$xmlContent = Get-Content $xmlPath 
	$rmContent = $xmlContent.package.metadata.description
	New-Item $rmPath
	Set-Content $rmPath $rmContent
}
pause
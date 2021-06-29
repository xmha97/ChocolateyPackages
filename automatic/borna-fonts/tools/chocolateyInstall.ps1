$packageName = 'borna-fonts'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyFont "$toolsDir\Fonts" -multiple
Remove-Item "$toolsDir\Fonts"

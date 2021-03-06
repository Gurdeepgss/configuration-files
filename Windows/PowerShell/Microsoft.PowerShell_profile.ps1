#	Sets PowerShell to vi mode, requires PsReadline installed
Set-PSReadLineOption -EditMode vi

#	alias to C# Programs
function CSharpProgramsDirectory{
	cd D:\gss\Work\Programming\cSharp-programs\
}
New-Alias -Name csharp -Value CSharpProgramsDirectory

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# imported for theme and oh-my-posh and posh-git
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

# To hide UserName@MachineName permanently
$DefaultUser = 'gurdeep'

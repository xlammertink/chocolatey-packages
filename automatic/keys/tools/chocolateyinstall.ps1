﻿$ErrorActionPreference = 'Stop';

$toolsDir = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  PackageName    = $env:ChocolateyPackageName
  SoftwareName   = 'Keys*'
  File           = Join-Path $toolsDir ''
  FileType       = 'msi'
  SilentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($env:ChocolateyPackageName).$($env:ChocolateyPackageVersion).MsiInstall.log`""
  ValidExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyInstallPackage @packageArgs

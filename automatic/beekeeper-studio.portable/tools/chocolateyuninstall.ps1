﻿$ErrorActionPreference = 'Stop';

$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

$executable = Join-Path $toolsDir 'Beekeeper-Studio-2.0.0-portable.exe'

Uninstall-BinFile -Name 'BeekeeperStudio' -Path "$executable"

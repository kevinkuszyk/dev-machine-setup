@echo off

IF "%1" == "core" choco install core.config -y && GOTO exit
IF "%1" == "svn" choco install svn.config -y && GOTO exit
IF "%1" == "node-globals" powershell scripts\install-node-globals.ps1 && GOTO exit

:help

:::
::: Dev machine setup cli
::: 
::: USAGE:
::: 
::: install {verb}
::: 
::: VERBS:
:::
:::  - core               Install core dev tools from Chocolatey.
:::  - svn                Install svn tools from Chocolatey.
:::
:::  - node-globals       Install global node packages.
:::

for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A

:exit
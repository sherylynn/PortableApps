@echo off

title Bash

cls
echo.
echo bash
::node --version
echo.
::#  Portgit  #
set PortGIT_HOME=%~dp0PortableGit
set PortGIT_PATH=%PortGIT_HOME%\cmd
set PortGIT_MINGW64=%PortGIT_HOME%\mingw64\bin
set PortGIT_MINGW32=%PortGIT_HOME%\mingw32\bin
set PortGIT_TOOLS_PATH=%PortGIT_HOME%\usr\bin
::#  node  #
set NODE_HOME=%~dp0NodeJSPortable
set NODE_PATH=%NODE_HOME%\App\NodeJS
set NPM_PATH=%NODE_HOME%\App\DefaultData
set NPM_INSTALL_PATH=%NODE_HOME%\Data\node-global
::# HOME #
set HOME=%NODE_HOME%\Data
set HOME_PATH=%NODE_HOME%\Data
::# emacs #
set EMACS_HOME=%PAL:PortableAppsDir%\EmacsPortable
::# path #
set PATH=%PortGIT_TOOLS_PATH%;%PortGIT_PATH%;%PortGIT_MINGW32%;%PortGIT_MINGW64%;%NODE_PATH%;%NPM_INSTALL_PATH%;%NPM_PATH%;%HOME_PATH%;%EMACS_HOME%\bin;%PATH%
cmd /k "cd /"
@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
@echo off
cls
setlocal EnableDelayedExpansion

::@if not exist "%HOME%" @set HOME=%HOMEDRIVE%%HOMEPATH%
::@if not exist "%HOME%" @set HOME=%USERPROFILE%
@set GIT_HOME=%~d0\PortableApps\PortableGit
@set PATH=%GIT_HOME%\cmd;%GIT_HOME%\mingw32\bin;%GIT_HOME%\usr\bin;%PATH%
@if not exist "%HOME%" @set HOME=%~d0\PortableApps\NodeJSPortable\Data
@set APP_PATH=%HOME%\vimcode
@set VIMPATH=vimcode
::切换路径
cd %HOME%

call rm "%HOME%\.vimrc"
call rm "%HOME%\_vimrc" 
call rm "%HOME%\AppData\Local\nvim\init.vim"
call rm "%HOME%\.eslintrc.json"
call rm "%HOME%\.eslintrc.js"
call rm "%HOME%\.npmrc"
call rm "%HOME%\.tern-config" 
call rmdir "%HOME%\AppData\Local\nvim"
call rmdir "%HOME%\.vim" 

call mklink ".vimrc" "%VIMPATH%\config\vimrc"
call mklink "_vimrc" "%VIMPATH%\config\vimrc"
call mklink ".eslintrc.json" "%VIMPATH%\config\eslintrc.json"
call mklink ".tern-config" "%VIMPATH%\config\tern-config"
call mklink /J ".vim" "%VIMPATH%\"


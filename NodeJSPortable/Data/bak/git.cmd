@ECHO OFF

SETLOCAL

SET "GIT_EXE=%~d0\PortableApps\GitPortable\App\Git\bin\git.exe"
IF NOT EXIST "%GIT_EXE%" (
  SET "GIT_EXE=git"
)

"%GIT_EXE%"  %*
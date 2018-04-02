@ECHO OFF

SETLOCAL

SET "EMACS_EXE=%~d0\PortableApps\EmacsPortable\bin\emacs.exe"
IF NOT EXIST "%EMACS_EXE%" (
  SET "EMACS_EXE=emacs"
)

"%EMACS_EXE%"  %*
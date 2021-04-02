@echo on

REM for skipping blocks we have to either REM each line or GOTO -- END1 or END2 etc
GOTO End1
SET ThisScriptsDirectory=%~dp0
SET PowerShellScriptPath=%ThisScriptsDirectory%LanguagePS.ps1
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%PowerShellScriptPath%""' -Verb RunAs}";
:END1


REM for non admn call of the shell
REM GOTO End2
@ECHO ON
SET ThisScriptsDirectory=%~dp0

SET PowerShellScriptPath=%ThisScriptsDirectory%LanguagePS.ps1

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%PowerShellScriptPath%'";

:End2

REM pause is needed as if i invoke shell from cmd then the nice snipet with if statement is not working (inside the powersell script to halt execution)
REM the other options are to invoke cmd.exe /k ""<SomePath>\<My Batch File>.bat" & pause"   THis can be run even within a bat or another cmd

Pause

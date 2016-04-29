@echo off

call gulp %*

if not %ERRORLEVEL% == 0 pause
REM 1
@echo off

DEL /F /A /Q \\?\%1RD /S /Q \\?\%1

echo Successfully delete!

pause
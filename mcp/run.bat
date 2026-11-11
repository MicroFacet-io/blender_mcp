call "%~dp0.venv/Scripts/activate.bat" wait

uv run blender-mcp --transport http --port 9191


:error_check
@if %ERRORLEVEL% EQU 16 goto exit_failure
@if %ERRORLEVEL% EQU 15 goto exit_failure
@if %ERRORLEVEL% EQU 14 goto exit_failure
@if %ERRORLEVEL% EQU 13 goto exit_failure
@if %ERRORLEVEL% EQU 12 goto exit_failure
@if %ERRORLEVEL% EQU 11 goto exit_failure
@if %ERRORLEVEL% EQU 10 goto exit_failure
@if %ERRORLEVEL% EQU 9 goto exit_failure
@if %ERRORLEVEL% EQU 8 goto exit_failure
@if %ERRORLEVEL% EQU 7 goto exit_failure
@if %ERRORLEVEL% EQU 6 goto exit_failure
@if %ERRORLEVEL% EQU 5 goto exit_failure
@if %ERRORLEVEL% EQU 4 goto exit_failure
@if %ERRORLEVEL% EQU 3 goto exit_success
@if %ERRORLEVEL% EQU 2 goto exit_success
@if %ERRORLEVEL% EQU 1 goto exit_success
@if %ERRORLEVEL% EQU 0 goto exit_success

:exit_success
@exit /b 0
	
:exit_failure
@exit /b 1
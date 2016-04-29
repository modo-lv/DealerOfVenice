@echo off

echo Cleaning out existing node_modules...
if exist node_modules rmdir /s /q node_modules
if not errorlevel 0 goto end

set dev_globals=browserify ^
	chai ^
	del ^
	gulp ^
	gulp-jade ^
	gulp-livescript ^
	gulp-mocha ^
	gulp-sass ^
	livescript ^
	prelude-ls ^
	require-globify ^
	vinyl-source-stream

echo Updating global packages...
call npm update --global %dev_globals%
if not errorlevel 0 goto end

echo Installing local package links...
call npm install --link --save-dev %dev_globals%
if not errorlevel 0 goto end

:end

if not errorlevel 0 (
	echo It seems there was an error. ERRORLEVEL: %errorlevel%
	pause
)
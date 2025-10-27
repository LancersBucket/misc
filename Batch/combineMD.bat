@echo off
setlocal enabledelayedexpansion

set "rootdir=Path\To\Folder"
set "outputfile=combine.txt"
SET "extensions=*.md"

>"%outputfile%" (
    for /r "%rootdir%" %%F in (%extensions%) do (
	echo %%~nxF
        type "%%F"
        echo.
        echo ------
        echo.
    )
)
    
echo Combined content written to %outputfile%
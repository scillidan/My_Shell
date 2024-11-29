@echo off
setlocal enabledelayedexpansion

rem Get the current directory
set "currentDir=%cd%"

rem Loop through each directory in the current directory
for /d %%D in (*) do (
    rem Check if it is a directory
    if exist "%%D\" (
        echo Adding directory: %%D
        git add "%%D"

        echo Committing directory: %%D
        git commit -m "upload %%D"

        echo Pushing directory: %%D
        git push

        echo.
    )
)

echo All directories have been processed.
endlocal

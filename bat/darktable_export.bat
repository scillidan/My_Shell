rem modify from https://gist.github.com/PetrGlad/93c0a2c66003d0ea0671f96a2128d9cf

@echo off
setlocal enabledelayedexpansion

rem Check for the -d argument
if "%1" == "-d" (
    set "inputDir=%2"
) else (
    echo Usage: cli.bat -d <dir>
    exit /b 1
)

rem Check if the input directory exists
if not exist "%inputDir%" (
    echo Directory "%inputDir%" does not exist.
    exit /b 1
)

rem Loop through all files in the specified directory
for %%p in ("%inputDir%\*") do (
    rem Note that uppercase JPG suffix is not recognized so adding "jpg" to output file name.
    set "outputDir=%%~dpnpx-export"
    if not exist "!outputDir!" (
        mkdir "!outputDir!"
    )
    darktable-cli --width 3000 --height 3000 --hq true "%%p" "!outputDir!\%%~np.jpg"
)

endlocal

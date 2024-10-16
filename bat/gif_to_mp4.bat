@echo off
setlocal enabledelayedexpansion

rem Set the current working directory
set "directory=%cd%"

rem Create an output directory if it doesn't exist
if not exist "%directory%\_out" mkdir "%directory%\_out"

rem Iterate over each GIF file in the directory
for %%i in ("%directory%\*.gif") do (
    echo Processing: %%i
    ffmpeg -i "%%i" -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" "%directory%\_out\%%~ni.mp4"
)

echo All GIFs converted to MP4 and saved in _out directory.
pause
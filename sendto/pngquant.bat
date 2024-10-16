@echo off
setlocal

rem Loop through all arguments passed to the batch file
for %%I in (%*) do (
    echo Processing "%%I"
    C:\Users\User\Bin\pngquant\pngquant.exe --force --verbose --ordered --speed=1 --quality=85 "%%I"
)

endlocal
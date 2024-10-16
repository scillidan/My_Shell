@echo off
setlocal

rem Loop through all arguments passed to the batch file
for %%I in (%*) do (
    echo Processing "%%I"
    C:\Users\User\Bin\oxipng\oxipng.exe -o 4 --strip safe --alpha "%%I"
)

endlocal
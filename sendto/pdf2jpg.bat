@echo off
setlocal enabledelayedexpansion

rem Loop through all arguments passed to the batch file
for %%I in (%*) do (
    echo Processing "%%I"
    
    rem Prompt for page number
    set /p "pageNum=Enter the page number to export (default is 1): "
    
    rem Check if the user pressed Enter (i.e., pageNum is empty)
    if "!pageNum!"=="" (
        set "pageNum=0"  rem Default to first page
    ) else (
        set /a pageNum-=1  rem Convert to zero-based index for ImageMagick
    )

    rem Extract the filename without the extension
    for %%F in ("%%I") do (
        set "filename=%%~nF"
        rem Convert the specified page of the PDF to JPG with specified background color and flatten
        C:\Users\User\Lib\ImageMagick\magick.exe convert -density 300 "%%I[!pageNum!]" -flatten -quality 90 "!filename!_img.jpg"
    )
)

endlocal

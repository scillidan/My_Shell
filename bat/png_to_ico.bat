@echo off
for %%F in (*.png) do (
	png-to-ico "%%F" > "%%~nF.ico"
)
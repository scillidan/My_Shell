@echo off
for /d %%X in (*) do 7z a "%%X.zip" "%%X"
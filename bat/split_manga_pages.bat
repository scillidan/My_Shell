@echo off
for /d %%X in (*) do (
	split_manga_pages -d %%X -m all
	move %%X/split_manga_pages split_manga_pages-%%X
)
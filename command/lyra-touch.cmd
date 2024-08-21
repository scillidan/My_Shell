touch %1.md ^
	&& echo-cli "---\nweight: %2\n---\n# %1\n\n, E" > %1.md ^
	&& move %1.md D:\git\BYYA-site\content.zh\docs\lyra-b\%1.md
	&& subl D:\git\BYYA-site\content.zh\docs\lyra-b\%1.md
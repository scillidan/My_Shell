move %2.%3 %1_%2.%3 ^
	&& touch %1_%2.%3.meta ^
	&& echo-cli "{\n\"Title\": \"%2\"\n}" > %1_%2.%3.meta ^
	&& move %1_%2.%3 C:\Users\User\Github\BYYA-site\content.zh\docs\tower\tower\%1_%2.%3 ^
	&& move %1_%2.%3.meta C:\Users\User\Github\BYYA-site\content.zh\docs\tower\tower\%1_%2.%3.meta
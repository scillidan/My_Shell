move %1.%2 %3_%1.%2 ^
	&& touch %3_%1.%2.meta ^
	&& echo-cli "{\n\"Title\": \"%1\"\n}" > %3_%1.%2.meta ^
	&& move %3_%1.%2 C:\Users\User\Github\BYYA-site\content.zh\docs\tower\tower\%3_%1.%2 ^
	&& move %3_%1.%2.meta C:\Users\User\Github\BYYA-site\content.zh\docs\tower\tower\%3_%1.%2.meta
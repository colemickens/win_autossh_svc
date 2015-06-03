cd C:\cygwin64\bin
autossh.exe ^
	-M 20000 ^
	^
	-R 22222:localhost:3389 ^
	-D 8080 ^
	-i C:\Users\colemick\.ssh\id_rsa ^
	cole@mickens.io

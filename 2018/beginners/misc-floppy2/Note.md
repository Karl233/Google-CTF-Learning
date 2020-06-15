# Description:
	Looks like you found a way to open the file in the floppy! But that www.com file looks suspicious.. Dive in and take another look?

# Solution:
- This file could not be executed under Linux, the output of file command shows that:
	`www.com: ASCII text, with CR, LF line terminators`
	which indicates that is may be a file under windows, since it uses CRLF terminator.
	+ CR, LF is the terminator for line termintaor.
	+ In Linux or Unix system, only one single character linefeed will be used.
	+ In Windows system, a carraiage return and a linefeed is used.

- Get it run under the dosbox, and try to debug it, trace the flow and found it repeating xor, seems to overwriting something.

- Check the memeory and sees the result that:

# Flag:
CTF{g00do1dDOS-FTW}
	
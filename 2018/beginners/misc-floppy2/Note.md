# Description:
	Looks like you found a way to open the file in the floppy! But that www.com file looks suspicious.. Dive in and take another look?

# Solution:
- This file could not be executed under Linux, the output of file command shows that:
	`www.com: ASCII text, with CR, LF line terminators`
	which indicates that is may be a file under windows, since it uses CRLF terminator.
	+ CR, LF is the terminator for line termintaor.
	+ In Linux or Unix system, only one single character linefeed will be used.
	+ In Windows system, a carraiage return and a linefeed is used.

- Get it run under the dosbox, and try to debug it, trace the flow.
- Finding it replacing characters in echo iteration, so check the memory and finally found that it will write the right key into the memory after the loop.

- Check the memeory and get the flag:
![dumper.png dumper.png](https://github.com/Karl233/Google-CTF-Learning/blob/master/2018/beginners/misc-floppy2/dumper.png)

# Flag:
CTF{g00do1dDOS-FTW}
	

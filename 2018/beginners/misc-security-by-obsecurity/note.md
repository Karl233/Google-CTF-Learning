# Description:
Reading the contents of the screenshot you find that some guy named "John" created the firmware for the OffHub router and stored it on an iDropDrive cloud share. You fetch it and find "John" packed the firmware with an unknown key. Can you recover the package key?

# Solutions:
1. At first try binwalk on the file, and got the result:
```
DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             Zip archive data, at least v2.0 to extract, compressed size: 10678, uncompressed size: 10872, name: password.x.a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.p.o.n.m.l.k.j.i.h.g.f.e.d.c.b.a.a.b.c.d.e.f.g.h.i.j.k.l.m.n.o
11078         0x2B46          End of Zip archive, footer length: 22
```
	As we can see it is an zip file, try to unzip it, and we got a file with almost the same name, except a missing suffix .p, try to unzip it again, we got the same result, with the suffix .o missing this time.
2. According to the hint security by obsecurity, we guess that this is an encryption simply rely on packing it many times, every time it add a new suffix ordered by the alphabet.
3. Try to write a script for decompression:
```bash
while [ "`find . -type f -name 'pass*' | wc -l`" -gt 0 ];
do
		find -type f -name "pass*" -exec unzip '{}' \; -exec rm -- '{}' \;;
done
```
The first 15 rounds of decompression runs without error, while after that it throws errors:
```
unzip:  cannot find zipfile directory in one of ./password.x.a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.p.o.n.m.l.k.j.i.h.g.f.e.d.c.b.a or
./password.x.a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.p.o.n.m.l.k.j.i.h.g.f.e.d.c.b.a.zip, and cannot find ./password.x.a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.p.o.n.m.l.k.j.i.h.g.f.e.d.c.b.a.ZIP, period.
Archive:  ./password.x.a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.a.b.c.d.e.f.g.h.i.j.k.l.m.n.o.p.p.o.n.m.l.k.j.i.h.g.f.e.d.c.b.a
	End-of-central-directory signature not found.  Either this file is not a zipfile, or it constitutes one disk of a multi-part archive.  In the^C
```
It shows that this is not a zip file, try binwalk and see that it is a xz file.
4. Use 7 zip and it automatically decompresses all the files, until the last one password.x, which requires password.
5. Use zip2john and john the ripper to crack the password. As john is mentioned in the description, the solution is very likely to be john-the-ripper.  
6. Got the password asdf and unzip it, got the password.txt, and the flag is inside.

# Flag:
CTF{CompressionIsNotEncryption}

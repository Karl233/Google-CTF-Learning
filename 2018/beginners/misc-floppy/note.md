# Description:
	Using the credentials from the letter, you logged in to the Foobanizer9000-PC. It has a floppy drive...why? There is an .ico file on the disk, but it doesn't smell right..

# Solution:
- Try binwalk on this .ico file with the output:
```
DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
765           0x2FD           Zip archive data, at least v2.0 to extract, compressed size: 123, uncompressed size: 136, name: driver.txt
956           0x3BC           Zip archive data, at least v2.0 to extract, compressed size: 214, uncompressed size: 225, name: www.com
1392          0x570           End of Zip archive, footer length: 22

```	
- Find out that it is  a zip file containing driver.txt and www.com
- Unzip it and check the driver.txt
- The flag is inside the driver.txt with:

# Flag:
     CTF{qeY80sU6Ktko8BJW}

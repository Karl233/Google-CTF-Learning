# Description:
Caesar once said, don't stab me… but taking a screenshot of an image sure feels like being stabbed. You connected to a VNC server on the Foobanizer 9000, it was view only. This screenshot is all that was present but it's gibberish. Can you recover the original text?

# Solution:
- The screenshot of this problem is not given, so I can only write the solution based on the live stream and the cipher generator provided. 
- Given the hint, we should use ocr to get the text in a screenshot, and the first trail, according to my Professor of Cryptography , should be calculating the entropy.
- Considering the entropy, we can judge whether the entropy is similar to English, and as in this case, it should be true. Then we can make a guess that it may be a substitution.
- The first thought is a shift cipher, and try caesar at first. Caesar Cipher is a shift cipher which shifts every character by an index. According to the python generator, the index should be 19.
- In general scenario, we can use caesar decipher online, or write one by ourselves and try different shift, finallly we can get the flag inside it.

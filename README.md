hashlib++
=========

`hashlib++` is a simple and very easy to use library to create a cryptographic
checksum called `hash`. It is written in plain C++ and should work with every compiler and platform. 

`hashlib++` allows you to create a hash (for example `MD5` or `SHA1`) with only one single method-call. So if you want to create a hash based on a file or a string quickly you might be interested. 


By now hashlib++ supports the following functions:

	-> MD5		Message-Digest algorithm 5
	-> SHA1  	Secure Hash Algorithm 1
	-> SHA2-Family 	Secure Hash Algorithm 256, 384 and 512
	

Run and/or modify `build.sh` to build and use hashlib++

##Sample usage
```cpp
#include <hashlibpp.h>
#include <string>
#include <iostream>  //for "cerr"

//creating a wrapper object 
hashwrapper *myWrapper = new md5wrapper();
 
try{
	// create a hash from a string
	std::string hash1 = myWrapper->getHashFromString("Hello World");
    
    // create a hash based on a file
	std::string hash2 = myWrapper->getHashFromFile("README.md");

}catch(hlException &e) {
 	std::cerr << "Error("  << e.error_number() << "): " << e.error_message() << std::endl;
}

delete myWrapper;
```

#Just give it a try.

See [http://hashlib2plus.sourceforge.net/index.html](http://hashlib2plus.sourceforge.net/index.html) for more info.

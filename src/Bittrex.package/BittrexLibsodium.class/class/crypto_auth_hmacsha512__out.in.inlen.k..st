api
crypto_auth_hmacsha512__out: out in: in inlen: inlen k: k
	^ self ffiCall: #(	int crypto_auth_hmacsha512(uchar *out, uchar *in, ulonglong inlen, uchar *k))
			 module: BittrexLibsodium 
			
		"The function crypto_auth_hmacsha512(hash, MESSAGE, MESSAGE_LEN, key)
		 authenticates a message 'in' whose length is 'inlen' using the secret key 'k' 
		 and puts the authenticator into provided buffer 'out' 
		 The length of 'k' is crypto_auth_hmacsha256_keybytes() and 
		 the length of 'out' is crypto_auth_hmacsha256_bytes()"
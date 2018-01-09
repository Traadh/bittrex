api
crypto_auth_hmacsha512_keybytes
	"self crypto_auth_hmacsha512_keybytes"
	^ self ffiCall: #(	size_t crypto_auth_hmacsha512_keybytes(void))
			 module: BittrexLibsodium 
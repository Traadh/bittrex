api
crypto_auth_hmacsha512_bytes
	"self crypto_auth_hmacsha512_bytes"
	^ self ffiCall: #(	size_t crypto_auth_hmacsha512_bytes(void))
			 module: BittrexLibsodium 
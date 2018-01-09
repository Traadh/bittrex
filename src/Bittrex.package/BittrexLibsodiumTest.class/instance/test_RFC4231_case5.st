tests-hmacsha512
test_RFC4231_case5
	"4.6 Test Case 5 (https://tools.ietf.org/html/rfc4231)"
	|data key output expected |
	key := (ByteArray readHexFrom: 
					'0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c',
					'0c0c0c0c') extendedToSize: 32.
   data := (ByteArray readHexFrom: 
					'546573742057697468205472756e6361',
					'74696f6e').
	expected := ByteArray readHexFrom: 
					'415fad6271580a531d4179bc891d87a6'.
   output := ByteArray new: 64.
	BittrexLibsodium crypto_auth_hmacsha512__out: output 
									in: data
									inlen: data size
									k: key.
	self assert: (output first: expected size) equals: expected. 
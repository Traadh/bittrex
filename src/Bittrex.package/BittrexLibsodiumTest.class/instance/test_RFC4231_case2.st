tests-hmacsha512
test_RFC4231_case2
	"4.3 Test Case 2 (https://tools.ietf.org/html/rfc4231)"
	|data key output expected |
	key := 'Jefe' asByteArray extendedToSize: 32.
   data := 'what do ya want for nothing?'.
	expected := ByteArray readHexFrom: 
					'164b7a7bfcf819e2e395fbe73b56e0a3',
					'87bd64222e831fd610270cd7ea250554',
					'9758bf75c05a994a6d034f65f8f0e6fd',
					'caeab1a34d4a6b4b636e070a38bce737'.
   output := ByteArray new: 64.
	BittrexLibsodium crypto_auth_hmacsha512__out: output 
									in: data
									inlen: data size
									k: key.
	self assert: output equals: expected.
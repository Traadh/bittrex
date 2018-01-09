tests-hmacsha512
test_RFC4231_case3
	"4.4 Test Case 3 (https://tools.ietf.org/html/rfc4231)"
	|data key output expected |
	key := (ByteArray readHexFrom: 
					'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
					'aaaaaaaa') extendedToSize: 32.
   data := (ByteArray readHexFrom: 
					'dddddddddddddddddddddddddddddddd',
					'dddddddddddddddddddddddddddddddd',
					'dddddddddddddddddddddddddddddddd',
					'dddd').
	expected := ByteArray readHexFrom: 
					'fa73b0089d56a284efb0f0756c890be9',
					'b1b5dbdd8ee81a3655f83e33b2279d39',
					'bf3e848279a722c806b485a47e67c807',
					'b946a337bee8942674278859e13292fb'.
   output := ByteArray new: 64.
	BittrexLibsodium crypto_auth_hmacsha512__out: output 
									in: data
									inlen: data size
									k: key.
	self assert: output equals: expected.
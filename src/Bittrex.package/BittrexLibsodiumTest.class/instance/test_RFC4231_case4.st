tests-hmacsha512
test_RFC4231_case4
	"4.5 Test Case 4 (https://tools.ietf.org/html/rfc4231)"
	|data key output expected |
	key := (ByteArray readHexFrom: 
					'0102030405060708090a0b0c0d0e0f10',
					'111213141516171819') extendedToSize: 32.
   data := (ByteArray readHexFrom: 
					'cdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcd',
					'cdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcd',
					'cdcdcdcdcdcdcdcdcdcdcdcdcdcdcdcd',
					'cdcd').
	expected := ByteArray readHexFrom: 
					'b0ba465637458c6990e5a8c5f61d4af7',
					'e576d97ff94b872de76f8050361ee3db',
					'a91ca5c11aa25eb4d679275cc5788063',
					'a5f19741120c4f2de2adebeb10a298dd'.
   output := ByteArray new: 64.
	BittrexLibsodium crypto_auth_hmacsha512__out: output 
									in: data
									inlen: data size
									k: key.
	self assert: output equals: expected.
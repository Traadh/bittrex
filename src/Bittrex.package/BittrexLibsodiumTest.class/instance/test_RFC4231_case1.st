tests-hmacsha512
test_RFC4231_case1
	"4.2 Test Case 1 (https://tools.ietf.org/html/rfc4231)"
	|data key output expected |
	key := (ByteArray readHexFrom: 
					'0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b',
					'0b0b0b0b') extendedToSize: 32.
   data := 'Hi There'.
	expected := ByteArray readHexFrom: 
					'87aa7cdea5ef619d4ff0b4241a1d6cb0',
					'2379f4e2ce4ec2787ad0b30545e17cde',
					'daa833b7d6b8a702038b274eaea3f4e4',
					'be9d914eeb61f1702e696c203a126854'.
   output := ByteArray new: 64.
	BittrexLibsodium crypto_auth_hmacsha512__out: output 
									in: data
									inlen: data size
									k: key.
	self assert: output equals: expected.
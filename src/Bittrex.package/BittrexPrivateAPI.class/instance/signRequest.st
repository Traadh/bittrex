support
signRequest
	| nonce uriToSign signature request |
	ApiSecret isNull ifTrue: [ self error: 'Api keys not configured. See class-side BittrexAPI.' ].
	nonce := DateAndTime now asUnixTime.
	request := client request.
	request url queryAt: 'apikey' put: ApiKey.
	request url queryAt: 'nonce' put: nonce.
	"ZnClient requestLine includes ':443' which breaks signing, so work around that..."
	uriToSign := 'https://bittrex.com' , request requestLine uriPathQueryFragment.
	signature := ByteArray new: 64.
	BittrexLibsodium
		crypto_auth_hmacsha512__out: signature
		in: uriToSign
		inlen: uriToSign size
		k: ApiSecret.
	request headers at: 'apisign' put: signature hex
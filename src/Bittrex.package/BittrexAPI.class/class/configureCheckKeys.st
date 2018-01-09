accessing
configureCheckKeys
	"self configureCheckKeys"
	|externalSize|
	Transcript crShow: 'ApiKey: ' , ApiKey.
	Transcript crShow: 'APiSecret: '.
	ApiSecret isNull 
		ifTrue: [ Transcript show: 'not configured' ]
		ifFalse: [ 
			externalSize := BittrexLibsodium crypto_auth_hmacsha512_keybytes. 
			1 to: externalSize  do: [ :secretIndex | 
				Transcript show: (ApiSecret byteAt: secretIndex) asCharacter
				].
			].

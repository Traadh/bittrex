accessing
configureApiKey: apiKey secretFromFile: secretFileName   
	"To avoid secrets leaking if Image is shared,  
	 read them from external file and store in external volatile memory"
	|fp fileId matchKey matchIndex inByte externalSize externalVolatileSecret|
	"self configureApiKey: '3af36a54c1ac33ac35910a80fb5a2074' 
			secretFromFile: '/home/ben/secret.txt'"
	secretFileName asFileReference exists ifFalse: [ self error: 'Can''t find file' ].
	inByte := ByteArray new: 1.	
	fp := FilePluginPrims new.
	[	fileId := fp open: secretFileName writable: false.
		"Search for subpart of apiKey"
		matchKey := ('(' , (apiKey first: 6) , ')') asByteArray.
		matchIndex := 1.
		[	(fp atEnd: fileId) ifTrue: [ self error: 'Failed to find api key in ' , secretFileName ]. 	
			fp read: fileId into: inByte startingAt: 1 count: 1. 
		  	(inByte first = (matchKey at: matchIndex)) 
				ifFalse: [ matchIndex := 1 ]
				ifTrue: [ matchIndex := matchIndex + 1 ].
			matchIndex = (matchKey size + 1).
		] whileFalse.
	
		"Key found, poke api-secret into voltatile memory."
		"Note bittrex api-secret is Libsodium's hmac signing key 'k' "
		externalSize := BittrexLibsodium crypto_auth_hmacsha512_keybytes. 
		externalVolatileSecret := ExternalAddress gcallocate: externalSize .
		1 to: externalSize  do: [ :secretIndex | 
			fp read: fileId into: inByte startingAt: 1 count: 1.
			externalVolatileSecret byteAt: secretIndex put: inByte first.
			].
	] ensure: [ fileId ifNotNil: [ fp close: fileId ] ].

	self configureApiKey: apiKey secret: externalVolatileSecret 
accessing
neoJsonMapping: reader
	reader for: BittrexResponse do: [	:mapper | 
		mapper mapInstVar: #success.
		mapper mapInstVar: #message.
		(mapper mapInstVar: #result) "valueSchema: self".
		].
"	self neoJsonResultMapping: reader."
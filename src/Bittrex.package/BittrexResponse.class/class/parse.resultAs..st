parsing
parse: jsonString resultAs: resultClass
	| reader |
	reader := NeoJSONReader on: jsonString readStream.
	reader
		for: self
		do: [ :mapping | 
			mapping mapInstVar: #success.
			mapping mapInstVar: #message.
			(mapping mapInstVar: #result) valueSchema: resultClass ].
	^ [ reader nextAs: BittrexResponse ]
		on: NeoJSONParseError
		do: [ :err | 
			| json |
			json := NeoJSONReader fromString: jsonString.
			(json at: 'success')
				ifFalse: [ self error: (json at: 'message') ]
				ifTrue: [ self error: 'UNKNOWN ERROR' ] ]
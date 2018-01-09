parsing
ignoreResultParse: jsonString 
    |reader|
    reader := NeoJSONReader on: jsonString readStream.
    reader for: self do: [ :mapping | 
        mapping mapInstVar: #success.
        mapping mapInstVar: #message.
        ].
    ^ reader nextAs: BittrexResponse
accessing
neoJsonMapping: reader
	reader for: self customDo: [ :mapping | 
		mapping listOfType: self andElementSchema: self elementClass 
		].

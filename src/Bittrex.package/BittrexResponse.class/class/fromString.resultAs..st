as yet unclassified
fromString: jsonString resultAs: aClass 
	|response|
	response := NeoJSONReader fromString: jsonString as: self.
	self halt.
adding
addColumnsToPresentation: aGLMFastTablePresentation 
	self instanceVariables do: [ :ivar|
	aGLMFastTablePresentation 	
		column: ivar asString
			evaluated: [ :each | each instVarNamed: ivar ]].
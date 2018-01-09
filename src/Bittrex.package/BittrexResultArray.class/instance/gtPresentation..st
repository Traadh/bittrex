as yet unclassified
gtPresentation: aGLMFastTablePresentation 
	aGLMFastTablePresentation
		display: [ :bittrexResponse | elements ]. 
	self elementClass instanceVariables do: [ :ivar|
		aGLMFastTablePresentation
			column: ivar asString
			evaluated: [ :each | each instVarNamed: ivar ]
	].
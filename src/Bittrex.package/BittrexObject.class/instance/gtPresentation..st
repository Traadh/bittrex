as yet unclassified
gtPresentation: aGLMFastTablePresentation
	aGLMFastTablePresentation display: [ :bittrexResponse | {self} ].
	self class instanceVariables
		do: [ :ivar | 
			aGLMFastTablePresentation
				column: ivar asString
				evaluated: [ :each | each instVarNamed: ivar ] ]
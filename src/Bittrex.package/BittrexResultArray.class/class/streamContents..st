instance creation
streamContents: aBlockClosure 
	^ self new resultArray: (Array streamContents: aBlockClosure)
as yet unclassified
anySample
	"Cache a sample case for use by examples of other API points"
	^sample ifNil: [ sample := self new getAll anyOne]

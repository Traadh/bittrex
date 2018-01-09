display
gtInspectorResultsIn: composite
	<gtInspectorPresentationOrder: 1> 
	| presentation | 
	presentation := composite fastTable.
	presentation title: self class name asString.
	self gtPresentation: presentation.

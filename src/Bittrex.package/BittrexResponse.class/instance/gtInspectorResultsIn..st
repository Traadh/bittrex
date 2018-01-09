display
gtInspectorResultsIn: composite
	<gtInspectorPresentationOrder: 1>
	| presentation |
	result ifNotNil: [
		presentation := composite fastTable.
		presentation title: self result class name asString.
		self result gtPresentation: presentation ]
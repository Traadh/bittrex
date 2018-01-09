as yet unclassified
filteredByVolume: aVolume
	"BittrexGetMarketSummaries new getAll filteredByVolume: 500 "

	^ self species elements: (self select: [ :market | market baseVolume > aVolume ])
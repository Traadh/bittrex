as yet unclassified
filteredByCurrency: aCurrencyString
	"BittrexGetMarketSummaries new getAll filteredByCurrency: 'BTC' "

	^ self species
		elements: (self select: [ :market | market marketName beginsWith: aCurrencyString ])
as yet unclassified
filteredByCurrency: aCurrencyString volume: aVolume
	"BittrexGetMarketSummaries new getAll filteredByCurrency: 'BTC' volume: 500 "

	^ (self filteredByCurrency: aCurrencyString) filteredByVolume: aVolume
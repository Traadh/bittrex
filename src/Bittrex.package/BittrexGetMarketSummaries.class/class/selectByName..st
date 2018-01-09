as yet unclassified
selectByName: aMarketNameString
	"BittrexGetMarketSummaries selectByName: 'BTC-LTC'"

	^ BittrexGetMarketSummaries new getAll elements detect: [ :market | market marketName = aMarketNameString ]
as yet unclassified
selectByName: aMarketNameString
	"BittrexGetMarkets selectByName: 'BTC-LTC'"

	^ BittrexGetMarkets new getAll result elements detect: [ :market | market marketName = aMarketNameString ]
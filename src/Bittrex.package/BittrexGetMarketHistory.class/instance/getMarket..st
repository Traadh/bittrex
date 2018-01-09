actions api
getMarket: aBittrexMarket
	"(BittrexGetMarketHistory new getMarket: BittrexGetMarkets anySample) inspect"
	self path: 'api/v1.1/public/getmarkethistory'.
	self queryAt: 'market' put: aBittrexMarket marketName.
	^BittrexResponse parse: self get resultAs: BittrexMarketHistory.
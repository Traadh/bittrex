accessing
getMarket: aBittrexMarket
	"(BittrexGetOpenOrders new getMarket: BittrexGetMarkets anySample) inspect"
	self path: 'api/v1.1/market/getopenorders'.
	self queryAt: 'market' put: aBittrexMarket marketName.
	self signRequest.
	^BittrexResponse parse: self get resultAs: BittrexOpenOrders.
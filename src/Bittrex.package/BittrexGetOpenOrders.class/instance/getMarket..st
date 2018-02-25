accessing
getMarket: aBittrexMarketName
	"(BittrexGetOpenOrders new getMarket: BittrexGetMarkets anySampleName) inspect"

	self path: 'api/v1.1/market/getopenorders'.
	self queryAt: 'market' put: aBittrexMarketName.
	self signRequest.
	^ (BittrexResponse parse: self get resultAs: BittrexOpenOrders) result
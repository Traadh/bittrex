accessing
getMarket: aBittrexMarket
	"(BittrexGetMarketSummary new getMarket: BittrexGetMarkets anySample) inspect"

	self path: 'api/v1.1/public/getmarketsummary'.
	self queryAt: 'market' put: aBittrexMarket.
	^ (BittrexResponse parse: self get resultAs: BittrexMarketSummaries) result
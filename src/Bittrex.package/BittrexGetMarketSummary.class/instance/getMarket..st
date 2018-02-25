accessing
getMarket: aBittrexMarketName
	"(BittrexGetMarketSummary new getMarket: BittrexGetMarkets anySampleName) inspect"

	self path: 'api/v1.1/public/getmarketsummary'.
	self queryAt: 'market' put: aBittrexMarketName.
	^ (BittrexResponse parse: self get resultAs: BittrexMarketSummaries) result
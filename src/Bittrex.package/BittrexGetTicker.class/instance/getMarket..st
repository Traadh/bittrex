accessing
getMarket: aBittrexMarketName
	"(BittrexGetTicker new getMarket: BittrexGetMarkets anySampleName) inspect"

	self path: 'api/v1.1/public/getTicker'.
	self queryAt: 'market' put: aBittrexMarketName.
	^ (BittrexResponse parse: self get resultAs: BittrexTicker) result
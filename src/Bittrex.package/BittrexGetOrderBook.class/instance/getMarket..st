accessing
getMarket: aBittrexMarketName
	"(BittrexGetOrderBook new getMarket: BittrexGetMarkets anySampleName) inspect"

	self path: 'api/v1.1/public/getorderbook'.
	self queryAt: 'market' put: aBittrexMarketName.
	self queryAt: 'type' put: 'both'.
	^ (BittrexResponse parse: self get resultAs: BittrexBuySellOrderBook) result
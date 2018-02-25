accessing
getSellingMarket: aBittrexMarketName
	"(BittrexGetOrderBook new getSellingMarket: BittrexGetMarkets anySample) inspect"

	self path: 'api/v1.1/public/getorderbook'.
	self queryAt: 'market' put: aBittrexMarketName.
	self queryAt: 'type' put: 'sell'.
	^ (BittrexResponse parse: self get resultAs: BittrexSellOrderBook) result
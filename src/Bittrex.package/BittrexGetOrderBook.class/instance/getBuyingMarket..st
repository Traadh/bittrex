accessing
getBuyingMarket: aBittrexMarketName
	"(BittrexGetOrderBook new getBuyingMarket: BittrexGetMarkets anySample) inspect"

	self path: 'api/v1.1/public/getorderbook'.
	self queryAt: 'market' put: aBittrexMarketName.
	self queryAt: 'type' put: 'buy'.
	^ (BittrexResponse parse: self get resultAs: BittrexBuyOrderBook) result
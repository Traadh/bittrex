accessing
getSellingMarket: aBittrexMarket 
	"(BittrexGetOrderBook new getSellingMarket: BittrexGetMarkets anySample) inspect"	
	self path: 'api/v1.1/public/getorderbook'.
	self queryAt: 'market' put: aBittrexMarket marketName.
	self queryAt: 'type' put: 'sell'.
	^BittrexResponse parse: self get resultAs: BittrexSellOrderBook.
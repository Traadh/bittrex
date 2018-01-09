accessing
getMarket: aBittrexMarket 
	"(BittrexGetOrderBook new getMarket: BittrexGetMarkets anySample) inspect"	
	self path: 'api/v1.1/public/getorderbook'.
	self queryAt: 'market' put: aBittrexMarket marketName.
	self queryAt: 'type' put: 'both'.
	^BittrexResponse parse: self get resultAs: BittrexBuySellOrderBook.
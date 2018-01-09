accessing
getMarket: aBittrexMarket
	"(BittrexGetTicker new getMarket: BittrexGetMarkets anySample) inspect"
	self path: 'api/v1.1/public/getTicker'.
	self queryAt: 'market' put: aBittrexMarket marketName.
	^BittrexResponse parse: self get resultAs: BittrexTicker.
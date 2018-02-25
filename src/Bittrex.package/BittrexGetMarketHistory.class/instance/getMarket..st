actions api
getMarket: aBittrexMarketName
	"(BittrexGetMarketHistory new getMarket: BittrexGetMarkets anySampleName) inspect"

	self path: 'api/v1.1/public/getmarkethistory'.
	self queryAt: 'market' put: aBittrexMarketName.
	^ (BittrexResponse parse: self get resultAs: BittrexMarketHistory) result
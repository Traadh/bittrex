as yet unclassified
sellMarket: aBittrexMarketName quantity: aQuantity rate: aRate
	"(BittrexSellLimit new sellMarket: (BittrexGetMarkets selectByName: 'USDT-BTC') quantity: 0.01 rate: 1000000) inspect"

	"Bittrex Total Sell Revenue = Quantity * Rate * (1 - ExFees)"

	self path: 'api/v1.1/market/selllimit'.
	self queryAt: 'market' put: aBittrexMarketName.
	self queryAt: 'quantity' put: aQuantity.
	self queryAt: 'rate' put: aRate.
	self signRequest.
	^ (BittrexResponse parse: self get resultAs: BittrexLimitOrderID) result
as yet unclassified
buyMarket: aBittrexMarketName quantity: aQuantity rate: aRate
	"(BittrexBuyLimit new buyMarket: (BittrexGetMarkets selectByName: 'USDT-BTC') quantity: 1 rate: 0.1) inspect"

	" Bittrex Total Buy Cost = Quantity * Rate * (1 + ExFees) "

	self path: 'api/v1.1/market/buylimit'.
	self queryAt: 'market' put: aBittrexMarketName.
	self queryAt: 'quantity' put: aQuantity.
	self queryAt: 'rate' put: aRate.
	self signRequest.
	^ [ (BittrexResponse parse: self get resultAs: BittrexLimitOrderID) result ]
		on: Error
		do:
			[ :msg | "(msg = 'MIN_TRADE_REQUIREMENT_NOT_MET') ifTrue: [ ^ self buyMarket: aBittrexMarket quantity:  ] ] " ^ msg ]
as yet unclassified
cancelOrder: aBittrexUuid
	"BittrexCancel new cancelOrder: (BittrexGetOpenOrders new getAll result elements at: 1)"

	self path: 'api/v1.1/market/cancel'.
	self queryAt: 'uuid' put: aBittrexUuid orderUuid.
	self signRequest.
	^ BittrexResponse ignoreResultParse: self get
	"Maybe return true if the order is cancelled, false with message if the order fails to cancel"
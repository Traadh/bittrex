as yet unclassified
getUuid: aUuid
	"Get a Current Order"

	"(BittrexGetOrder new getUuid: (BittrexGetOpenOrders new getAll result elements at: 1) orderUuid)"

	"Get a Historic Order"

	"(BittrexGetOrder new getUuid: (BittrexGetOrderHistory new getAll result elements at: 1) orderUuid)"

	self path: 'api/v1.1/account/getorder'.
	self queryAt: 'uuid' put: aUuid.
	self signRequest.
	^ BittrexResponse parse: self get resultAs: BittrexOrder
actions api
getAll
	"BittrexGetOrderHistory new getAll inspect"

	self path: 'api/v1.1/account/getorderhistory'.
	self signRequest.
	^ (BittrexResponse parse: self get resultAs: BittrexOrderHistories) result
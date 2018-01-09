actions api
getAll
	"BittrexGetBalances new getAll inspect"
	self path: 'api/v1.1/account/getbalances'.
	self signRequest.
	^BittrexResponse parse: self get resultAs: BittrexBalances.
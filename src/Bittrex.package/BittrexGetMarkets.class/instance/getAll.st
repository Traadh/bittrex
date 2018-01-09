actions api
getAll
	"BittrexGetMarkets new getAll inspect"
	self path: 'api/v1.1/public/getmarkets'.
	^BittrexResponse parse: self get resultAs: BittrexMarkets.

actions api
getAll
	"BittrexGetCurrencies new getAll inspect"

	self path: 'api/v1.1/public/getcurrencies'.
	^ (BittrexResponse parse: self get resultAs: BittrexCurrencies) result
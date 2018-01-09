actions api
getAll
	"BittrexGetMarketSummaries new getAll inspect"

	self path: 'api/v1.1/public/getmarketsummaries'.
	^ (BittrexResponse parse: self get resultAs: BittrexMarketSummaries) result
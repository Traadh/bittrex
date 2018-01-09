I interface to Bittrex to retrieve the orderbook for a given market
.../api/v1.1/public/getorderbook

Responsibilities: 
I build the api's url path, sign the request and parse the JSON response.

Public API and Key Messages:
- getMarket: aBittrexMarket
- getBuyingMarket: aBittrexMarket
- getSellingMarket: aBittrexMarket 


Collaborators: 
- BittrexOrderBook, and subclasses - specifies and holds #Result mapping to a collection of BittrexOrder objects. 


Internal Representation and Key Implementation Points:

Example Raw Request:
https://bittrex.com/api/v1.1/public/getorderbook?market=BTC-LTC&type=both    
- market	- a required string literal for the market (ex: BTC-LTC)
- type - a required	 string literal  to identify the type of orderbook to return {buy, sell or both}.
		
Example Raw Response:
    {
	"success" : true,
	"message" : "",
	"result" : {
		"buy" : [{
				"Quantity" : 12.37000000,
				"Rate" : 0.02525000
			}
		],
		"sell" : [{
				"Quantity" : 32.55412402,
				"Rate" : 0.02540000
			}, {
				"Quantity" : 60.00000000,
				"Rate" : 0.02550000
			}, {
				"Quantity" : 60.00000000,
				"Rate" : 0.02575000
			}, {
				"Quantity" : 84.00000000,
				"Rate" : 0.02600000
			}
		]
	}
}
I interface to Bittrex  to place a sell "limit" order in a specific market.
.../api/v1.1/market/selllimit
Make sure you have the proper permissions set on your API keys for this call to work.

Responsibilities: 
I build the api's url path, sign the request and parse the JSON response.

Public API and Key Messages:
#sellMarket:quantity:rate:  - create a sell limit order, return UUID of created order
   e.g. "(BittrexSellLimit new sellMarket: (BittrexGetMarkets selectByName: 'USDT-BTC') quantity: 0.01 rate: 1000000) inspect"
 
Collaborators: 
- BittrexLimitOrderID holds the returned UUID of the order


Internal Representation and Key Implementation Points:

Example Raw Request:
https://bittrex.com/api/v1.1/market/selllimit?apikey=API_KEY&market=BTC-LTC&quantity=1.2&rate=1.3    

Example Raw Response (the created order uuid):
==>BittrexLimitOrderID
{
	"success" : true,
	"message" : "",
	"result" : {
			"uuid" : "614c34e4-8d71-11e3-94b5-425861b86ab6"
		}
}
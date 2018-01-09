I interface to Bittrex  to place a buy "limit" order in a specific market.
.../api/v1.1/market/buylimit
Make sure you have the proper permissions set on your API keys for this call to work.

Responsibilities: 
I build the api's url path, sign the request and parse the JSON response.

Public API and Key Messages:
#buyMarket:quantity:rate:  - create a buy limit order, return UUID of created order
   e.g. "(BittrexBuyLimit new buyMarket: (BittrexGetMarkets selectByName: 'USDT-BTC') quantity: 1 rate: 0.1) inspect"
 
Collaborators: 
- BittrexLimitOrderID holds the returned UUID of the order

Internal Representation and Key Implementation Points:

Example Raw Request:
https://bittrex.com/api/v1.1/market/buylimit?apikey=API_KEY&market=BTC-LTC&quantity=1.2&rate=1.3    

Example Raw Response (the created order uuid):
BittrexLimitOrderID ==>
{
	"success" : true,
	"message" : "",
	"result" : {
			"uuid" : "e606d53c-8d70-11e3-94b5-425861b86ab6"
		}
}
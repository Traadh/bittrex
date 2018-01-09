I interface to Bittrex to retrieve the latest trades that have occured for a specific market.
.../api/v1.1/public/getmarkethistory

Responsibilities: 
I build the api's url path, sign the request and parse the JSON response.

Public API and Key Messages:
- getMarket: - configure a Znclient and parse JSON response for a specific market.
  e.g. "(BittrexGetMarketHistory new getMarket: BittrexGetMarkets anyOne) inspect"
 

Collaborators: 
- BittrexTrades specifies and holds #Result mapping to a collection of BittrexTrade objects. 

Internal Representation and Key Implementation Points:

Example Raw Request:
https://bittrex.com/api/v1.1/public/getmarkethistory?market=BTC-DOGE    
- market - a required string literal for the market (ex: BTC-LTC)
		
Response - List of trades objects
    {
	"success" : true,
	"message" : "",
	"result" : [{
			"Id" : 319435,
			"TimeStamp" : "2014-07-09T03:21:20.08",
			"Quantity" : 0.30802438,
			"Price" : 0.01263400,
			"Total" : 0.00389158,
			"FillType" : "FILL",
			"OrderType" : "BUY"
		}, {
			"Id" : 319433,
			"TimeStamp" : "2014-07-09T03:21:20.08",
			"Quantity" : 0.31820814,
			"Price" : 0.01262800,
			"Total" : 0.00401833,
			"FillType" : "PARTIAL_FILL",
			"OrderType" : "BUY"
		}, {
			"Id" : 319379,
			"TimeStamp" : "2014-07-09T02:58:48.127",
			"Quantity" : 49.64643541,
			"Price" : 0.01263200,
			"Total" : 0.62713377,
			"FillType" : "FILL",
			"OrderType" : "SELL"
		}, {
			"Id" : 319378,
			"TimeStamp" : "2014-07-09T02:58:46.27",
			"Quantity" : 0.35356459,
			"Price" : 0.01263200,
			"Total" : 0.00446622,
			"FillType" : "PARTIAL_FILL",
			"OrderType" : "BUY"
		}
	]
}
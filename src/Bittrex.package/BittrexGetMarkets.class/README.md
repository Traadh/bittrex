I interface to Bittrex to retrieve the open and available trading markets at Bittrex along with other meta data.
.../api/v1.1/public/getmarkets

Responsibilities: 
I build the api's url path, sign the request and parse the JSON response.

Public API and Key Messages:
- getAll - configure a Znclient and parse JSON response
  e.g. "BittrexGetMarkets new getAll inspect" 
 

Collaborators: 
- BittrexMarkets specifies and holds #Result mapping to a collection of BittrexMarket  objects. 


Internal Representation and Key Implementation Points:

Example Raw Request:
https://bittrex.com/api/v1.1/public/getmarkets    

Example Raw Response:
{
	"success" : true,
	"message" : "",
	"result" : [{
			"MarketCurrency" : "LTC",
			"BaseCurrency" : "BTC",
			"MarketCurrencyLong" : "Litecoin",
			"BaseCurrencyLong" : "Bitcoin",
			"MinTradeSize" : 0.01000000,
			"MarketName" : "BTC-LTC",
			"IsActive" : true,
			"Created" : "2014-02-13T00:00:00"
		}, {
			"MarketCurrency" : "DOGE",
			"BaseCurrency" : "BTC",
			"MarketCurrencyLong" : "Dogecoin",
			"BaseCurrencyLong" : "Bitcoin",
			"MinTradeSize" : 100.00000000,
			"MarketName" : "BTC-DOGE",
			"IsActive" : true,
			"Created" : "2014-02-13T00:00:00"
		}
    ]
}

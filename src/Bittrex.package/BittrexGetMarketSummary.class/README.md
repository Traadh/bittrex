I interface to Bittrex to retrieve the last 24 hour summary of (all active exchanges(??))/(a particular market).  [Not sure if api documention has a copy paste error with /public/getmarketsummaries]
.../api/v1.1/public/getmarketsummary

Responsibilities: 
I build the api's url path, sign the request and parse the JSON response.

Public API and Key Messages:
- getMarket: - configure a Znclient and parse JSON response for a specific market.
  e.g. "(BittrexGetMarketHistory new getMarket: BittrexGetMarkets anyOne) inspect"
 
Collaborators: 
- BittrexSummaryMarkets specifies and holds #Result mapping to a collection of BittrexSummaryMarket  objects. 

Internal Representation and Key Implementation Points:

Example Raw Request:
https://bittrex.com/api/v1.1/public/getmarketsummary?market=btc-ltc    
Example Raw Response
{
	"success" : true,
	"message" : "",
	"result" : [{
			"MarketName" : "BTC-LTC",
			"High" : 0.01350000,
			"Low" : 0.01200000,
			"Volume" : 3833.97619253,
			"Last" : 0.01349998,
			"BaseVolume" : 47.03987026,
			"TimeStamp" : "2014-07-09T07:22:16.72",
			"Bid" : 0.01271001,
			"Ask" : 0.01291100,
			"OpenBuyOrders" : 45,
			"OpenSellOrders" : 45,
			"PrevDay" : 0.01229501,
			"Created" : "2014-02-13T00:00:00",
			"DisplayMarketName" : null
		}
    ]
}
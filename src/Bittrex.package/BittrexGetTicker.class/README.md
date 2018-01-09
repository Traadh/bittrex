I interface to Bittrex to retrieve the current tick values for a market.
.../api/v1.1/public/getticker

Responsibilities: 
I build the api's url path, sign the request and parse the JSON response.

Public API and Key Messages:
- getMarket: - configure a Znclient and parse JSON response for a specific market.
  e.g. "(BittrexGetTicker new getMarket: BittrexGetMarkets anyOne) inspect"
 

Collaborators: 
- BittrexTicker specifies and holds the #Result mapping to a single BittrexTick  object. 

Internal Representation and Key Implementation Points:

Example Raw Request:
		
Example Raw Request:
https://bittrex.com/api/v1.1/public/getticker?market=btc-ltc  
- market	- a required string literal for the market (ex: BTC-LTC)

Example Raw Response:
{
	"success" : true,
	"message" : "",
	"result" : {
		"Bid" : 2.05670368,
		"Ask" : 3.35579531,
		"Last" : 3.35579531
	}
}
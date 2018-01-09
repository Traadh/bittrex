I interface to Bittrex to retrieve all supported currencies at Bittrex along with other meta data.
.../api/v1.1/public/getcurrencies

Responsibilities: 
I build the api's url path, sign the request and parse the JSON response.

Public API and Key Messages:
- getAll - configure a Znclient and parse JSON response
  e.g. "BittrexGetCurrencies new getAll inspect"
 

Collaborators: 
- BittrexCurrencies specifies and holds #Result mapping to a collection of BittrexCurrency objects. 

Internal Representation and Key Implementation Points:

Example Raw Request:
https://bittrex.com/api/v1.1/public/getcurrencies    

Example Raw Response
{
	"success" : true,
	"message" : "",
	"result" : [{
			"Currency" : "BTC",
			"CurrencyLong" : "Bitcoin",
			"MinConfirmation" : 2,
			"TxFee" : 0.00020000,
			"IsActive" : true,
			"CoinType" : "BITCOIN",
			"BaseAddress" : null
		}, {
			"Currency" : "LTC",
			"CurrencyLong" : "Litecoin",
			"MinConfirmation" : 5,
			"TxFee" : 0.00200000,
			"IsActive" : true,
			"CoinType" : "BITCOIN",
			"BaseAddress" : null
		}
    ]
}
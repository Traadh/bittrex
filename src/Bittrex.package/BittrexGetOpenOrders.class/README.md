I interface to Bittrex to retrieve all orders that you currently have opened. A specific market can optionally be requested.
.../api/v1.1/market/getopenorders

Responsibilities: 
I build the api's url path, sign the request and parse the JSON response.

Public API and Key Messages:
- getAll - configure a Znclient, sign request and parse JSON response
  e.g. "BittrexGetBalances new getAll inspect" 
- getMarket: - same for a specific market
  e.g. "(BittrexGetOpenOrders new getMarket: BittrexGetMarkets anyOne inspect"
 
Collaborators: 
- BittrexOpenOrders specifies and holds #Result mapping to a collection of BittrexOpenOrder objects. 


Internal Representation and Key Implementation Points:

Example Raw Request:
https://bittrex.com/api/v1.1/market/getopenorders?apikey=API_KEY&market=BTC-LTC    
- market - an optional string literal for the market (ie. BTC-LTC)

Example Raw Response:
==> BittrexOpenOrders[BittrexOpenOrder*]
    {
	"success" : true,
	"message" : "",
	"result" : [{
			"Uuid" : null,
			"OrderUuid" : "09aa5bb6-8232-41aa-9b78-a5a1093e0211",
			"Exchange" : "BTC-LTC",
			"OrderType" : "LIMIT_SELL",
			"Quantity" : 5.00000000,
			"QuantityRemaining" : 5.00000000,
			"Limit" : 2.00000000,
			"CommissionPaid" : 0.00000000,
			"Price" : 0.00000000,
			"PricePerUnit" : null,
			"Opened" : "2014-07-09T03:55:48.77",
			"Closed" : null,
			"CancelInitiated" : false,
			"ImmediateOrCancel" : false,
			"IsConditional" : false,
			"Condition" : null,
			"ConditionTarget" : null
		}, {
			"Uuid" : null,
			"OrderUuid" : "8925d746-bc9f-4684-b1aa-e507467aaa99",
			"Exchange" : "BTC-LTC",
			"OrderType" : "LIMIT_BUY",
			"Quantity" : 100000.00000000,
			"QuantityRemaining" : 100000.00000000,
			"Limit" : 0.00000001,
			"CommissionPaid" : 0.00000000,
			"Price" : 0.00000000,
			"PricePerUnit" : null,
			"Opened" : "2014-07-09T03:55:48.583",
			"Closed" : null,
			"CancelInitiated" : false,
			"ImmediateOrCancel" : false,
			"IsConditional" : false,
			"Condition" : null,
			"ConditionTarget" : null
		}
	]
}
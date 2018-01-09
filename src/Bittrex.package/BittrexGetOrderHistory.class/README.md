I interface to Bittrex to retrieve your order history.
.../api/v1.1/account/getorderhistory

Responsibilities: 
I build the api's url path, sign the request and parse the JSON response.

Public API and Key Messages:
- getAll - configure a Znclient, sign request and parse JSON response
  e.g. "BittrexGetBalances new getAll inspect" 

Collaborators: 
- BittrexOrderHistories  specifies and holds #Result mapping to a collection of BittrexOrderHistory objects. 


Internal Representation and Key Implementation Points:

Example Raw Request:
https://bittrex.com/api/v1.1/account/getorderhistory     

Example Raw Response:
==>BittrexOrderHistories[ BittrexOrderHistory* ] 
{
	"success" : true,
	"message" : "",
	"result" : [{
			"OrderUuid" : "fd97d393-e9b9-4dd1-9dbf-f288fc72a185",
			"Exchange" : "BTC-LTC",
			"TimeStamp" : "2014-07-09T04:01:00.667",
			"OrderType" : "LIMIT_BUY",
			"Limit" : 0.00000001,
			"Quantity" : 100000.00000000,
			"QuantityRemaining" : 100000.00000000,
			"Commission" : 0.00000000,
			"Price" : 0.00000000,
			"PricePerUnit" : null,
			"IsConditional" : false,
			"Condition" : null,
			"ConditionTarget" : null,
			"ImmediateOrCancel" : false
		}, {
			"OrderUuid" : "17fd64d1-f4bd-4fb6-adb9-42ec68b8697d",
			"Exchange" : "BTC-ZS",
			"TimeStamp" : "2014-07-08T20:38:58.317",
			"OrderType" : "LIMIT_SELL",
			"Limit" : 0.00002950,
			"Quantity" : 667.03644955,
			"QuantityRemaining" : 0.00000000,
			"Commission" : 0.00004921,
			"Price" : 0.01968424,
			"PricePerUnit" : 0.00002950,
			"IsConditional" : false,
			"Condition" : null,
			"ConditionTarget" : null,
			"ImmediateOrCancel" : false
		}
	]
}
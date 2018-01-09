I interface to Bittrex  to retrieve a single order by uuid.
.../api/v1.1/account/getorder

Responsibilities: 
I build the api's url path, sign the request and parse the JSON response.

Public API and Key Messages:
#getUuid:    - return the order for given uuid
   e.g. "(BittrexGetOrder new getUuid: (BittrexGetOpenOrders new getAll result elements at: 1) orderUuid)"
 
Collaborators: 
- BittrexOrder holds the returned order

Internal Representation and Key Implementation Points:

Example Raw Request:
https://bittrex.com/api/v1.1/account/getorder&uuid=0cb4c4e4-bdc7-4e13-8c13-430e587d2cc1    

Example Raw Response :
BittrexOrder==>
{
	"success" : true,
	"message" : "",
	"result" : {
		"AccountId" : null,
		"OrderUuid" : "0cb4c4e4-bdc7-4e13-8c13-430e587d2cc1",
		"Exchange" : "BTC-SHLD",
		"Type" : "LIMIT_BUY",
		"Quantity" : 1000.00000000,
		"QuantityRemaining" : 1000.00000000,
		"Limit" : 0.00000001,
		"Reserved" : 0.00001000,
		"ReserveRemaining" : 0.00001000,
		"CommissionReserved" : 0.00000002,
		"CommissionReserveRemaining" : 0.00000002,
		"CommissionPaid" : 0.00000000,
		"Price" : 0.00000000,
		"PricePerUnit" : null,
		"Opened" : "2014-07-13T07:45:46.27",
		"Closed" : null,
		"IsOpen" : true,
		"Sentinel" : "6c454604-22e2-4fb4-892e-179eede20972",
		"CancelInitiated" : false,
		"ImmediateOrCancel" : false,
		"IsConditional" : false,
		"Condition" : "NONE",
		"ConditionTarget" : null
	}
}
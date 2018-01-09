I interface to Bittrex  to cancel a buy or sell order.
.../api/v1.1/market/cancel

Responsibilities: 
I build the api's url path, sign the request and parse the JSON response.

Public API and Key Messages:
#cancelOrder:    - cancel given order
   e.g. "BittrexCancel new cancelOrder: (BittrexGetOpenOrders new getAll result elements at: 1)"
 
Collaborators: 
- BittrexLimitOrderID holds the returned UUID of the order

Internal Representation and Key Implementation Points:

Example Raw Request:
https://bittrex.com/api/v1.1/market/cancel?apikey=API_KEY&uuid=ORDER_UUID    

Example Raw Response (the created order uuid):
BittrexResponse(null)==>
{
    "success" : true,
    "message" : "",
    "result" : null
}

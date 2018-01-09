I interface to Bittrex to retrieve all balances from your account.
.../api/v1.1/account/getbalances

Responsibilities: 
I build the api's url path, sign the request and parse the JSON response.


Public API and Key Messages:
- getAll - returns a collection of non zero balances
  e.g. "BittrexGetBalances new getAll inspect" 
 

Collaborators: 
- BittrexBalances  specifies and holds #Result mapping to a collection of BittrexBalance objects. 

Internal Representation and Key Implementation Points:

Example Raw Request:
https://bittrex.com/api/v1.1/account/getbalances?apikey=API_KEY    

Example Raw Response:
 ==>BittrexBalances[BittrexBalance*]
    {
	"success" : true,
	"message" : "",
	"result" : [{
			"Currency" : "DOGE",
			"Balance" : 0.00000000,
			"Available" : 0.00000000,
			"Pending" : 0.00000000,
			"CryptoAddress" : "DLxcEt3AatMyr2NTatzjsfHNoB9NT62HiF",
			"Requested" : false,
			"Uuid" : null

		}, {
			"Currency" : "BTC",
			"Balance" : 14.21549076,
			"Available" : 14.21549076,
			"Pending" : 0.00000000,
			"CryptoAddress" : "1Mrcdr6715hjda34pdXuLqXcju6qgwHA31",
			"Requested" : false,
			"Uuid" : null
		}
	]
}
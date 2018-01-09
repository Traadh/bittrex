I am the top-most abstract class for interfacing the Bittrex REST API
implemented using a Command pattern. Each API entry point is represented by an individual class.   Main API documentation is at...
https://bittrex.com/home/api

All requests use the application/json content type and go over https. 
The base url is https://bittrex.com/api/{version}/...
All requests are GET requests and all responses  are JSON formatted as follows...

{
	"success" : true,
	"message" : "",
	"result" :  ...custom.data...
}

The common first level fields of this JSON string are parsed by
BittrexResponse class>>neoJsonMapping:  
with the returned custom data parsed by BittrexResponse subclasses. 


Configuration

After you generate ApiKey and ApiSecret in your Bittrex account 
configure them like this example... 
e.g.   ApiKey   3af36a54c1ac33ac35910a80fb5a2074
e.g.   ApISecret  5234ca802140d0f8a8485bdd2fe81598

Create file  "secret.txt"  containing...
    :3af36a:5234ca802140d0f8a8485bdd2fe81598
then  evaluate...
    apiKey := '3af36a54c1ac33ac35910a80fb5a2074'.
    BittrexAPI configureApiKey: apiKey 
                          secretFromFile: '/home/ben/secret.txt'.

Check the configuration by evaluating...
   BittrexAPI configureCheckKeys


Collaborators: 
- ZnClient interfaces to the web service.
- NeoJSONReader parses the response.

HMAC authentication of requests is done using the libsodium
library via UFFI.

ZnClient is used to interface with the Bittrex web service.
For the moment this is a single cached instance 
Later the  plan is  to draw from a pool of ZnClients
to enable API cmmands to be sent in parallel.  


Public API and Key Messages [In flux pre-alpha]

- "BittrexAPI resetClient" - dispose of cached ZnClient in case of emergency. 


Internal Representation and Key Implementation Points.

    Instance Variables
	client:		The individual ZnClient (in future drawn from a pool)  
	jsonResponse:		Parsed JSON response for debugging.
	rawResponse:		Raw JSON response for debugging.

    Implementation Points
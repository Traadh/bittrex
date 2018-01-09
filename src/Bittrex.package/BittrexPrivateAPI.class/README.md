I am an abstract class for Bittrex API commands which are 
required to be signed by a personal key to maintain account security.

Mainly I provide an organisational placeholder for human perception.
I add only a single method #signRequest.

Get a personal api key by signing up for a Bittrex account,
enabling two factor authentication, and configuring a key.

High priority (after all APIs are implemented) is to change implementation to read the secret keys from disk in a way
that loads them into volatile memory such that they 
never touch the Smalltalk Image.  Possibly we should
do this in pure C wrapping the current use of libsodium.


Public API and Key Messages
- signRequest - after the ZnClient request is build, sign the requestLine.
 

Collaborators
- BittrexLibsodium provides the HMAC-SHA512 hashing function.


Internal Representation and Key Implementation Points.

Bittrex API version 1.1  uses a standard HMAC-SHA512 signing. 
For this we use the libsodium library.

"apikey" and "nonce" are apprended to the GET request and 
the calculated HMAC hash is included as HTTP header "apisign". 
Note: the nonce is not respected right now but will be enforced later.


Here is the non-Pharo example provided by Bittrex...
$apikey='xxx';
$apisecret='xxx';
$nonce=time();
$uri='https://bittrex.com/api/v1.1/market/getopenorders?apikey='.$apikey.'&nonce='.$nonce;
$sign=hash_hmac('sha512',$uri,$apisecret);
$ch = curl_init($uri);
curl_setopt($ch, CURLOPT_HTTPHEADER, array('apisign:'.$sign));
$execResult = curl_exec($ch);
$obj = json_decode($execResult);
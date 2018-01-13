# An interface to the Bittrex REST API.

## Installation

1. Clone the repo with Iceberg in Pharo 6.1 or later
![Iceberg clone repository dialog](https://github.com/Traadh/bittrex/blob/master/doc/iceberg-clone-repo-dialog.png?raw=true)

2. Load the package
![Iceberg load package](https://github.com/Traadh/bittrex/blob/master/doc/iceberg-load-package.png?raw=true)

3. Install dependencies
A Baseline has not yet been defined, so evaluate... 
    BittrexAPI installNeoJSON 

## Usage
The API has been implemented as a Command Pattern, a class per entrypoint.
Try the BittrexPublicAPIs first since they work out of the box without any configuration at Bittrex.com, e.g...
  BittrexGetMarkets new getAll inspect
![a BittrexMarket](https://github.com/Traadh/bittrex/blob/master/doc/BittrexMarket-inspector.png?raw=true)

To try the BittrexPrivateAPIs, at the Bittrex.com > Settings > API Keys,
create a new paired ApiKey and ApiSecret. 
  e.g. ApiKey 3af36a54c1ac33ac35910a80fb5a2074 
  e.g. ApiSecret 5234ca802140d0f8a8485bdd2fe81598

Create a file (e.g. secret.txt) with lines having 
the first six digits of ApiKey bracketed and appended with ApiSecret.
  e.g. (3af36a)5234ca802140d0f8a8485bdd2fe81598

In Pharo, evaluate...
  apiKey := '3af36a54c1ac33ac35910a80fb5a2074'. 
  BittrexAPI configureApiKey: apiKey secretFromFile: 'secret.txt'.
  
The aim of this approach is to avoid leaking the secret through a saved Image.
The secret is stored in volatile memory which is nilled when the Image/VM quit.

Check your system is correctly configured by evaluating... 
  BittrexAPI configureCheckKeys
  
  
P.S. I'm new to Iceberg so advice welcome on improving the git workflow.

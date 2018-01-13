# An interface to the Bittrex REST API for Smalltalk (initially Pharo).

The Bittrex API interface is implemented as a Command Pattern, a class per entrypoint.

## Installation

1. In Pharo 6.1 or later, clone the repo with Iceberg... <p>
![Iceberg clone repository dialog](https://github.com/Traadh/bittrex/blob/master/doc/iceberg-clone-repo-dialog.png?raw=true)

2. From the Packages tab, load the Bittrex package... <p>
![Iceberg load package](https://github.com/Traadh/bittrex/blob/master/doc/iceberg-load-package.png?raw=true)

3. Install dependencies <p>
A Baseline has not yet been defined, so evaluate... <p>
```smalltalk
   BittrexAPI installNeoJSON
```

## Usage - public apis
Try the BittrexPublicAPIs first since they work out of the box without any configuration at Bittrex.com, e.g...<p>
```smalltalk
   BittrexGetMarkets new getAll inspect
```
![a BittrexMarket](https://github.com/Traadh/bittrex/blob/master/doc/BittrexMarket-inspector.png?raw=true)

## Usage - private apis
To try the BittrexPrivateAPIs, at the Bittrex.com > Settings > API Keys,
create a new paired ApiKey and ApiSecret. <br>
  e.g. ApiKey 3af36a54c1ac33ac35910a80fb5a2074 <br>
  e.g. ApiSecret 5234ca802140d0f8a8485bdd2fe81598 <br>

Create a file (e.g. secret.txt) with lines having the first six digits of ApiKey bracketed and appended with ApiSecret. <br>
  e.g. (3af36a)5234ca802140d0f8a8485bdd2fe81598

Configure these keys in Pharo by evaluating...<p>
```smalltalk
   apiKey := '3af36a54c1ac33ac35910a80fb5a2074'. 
   BittrexAPI configureApiKey: apiKey secretFromFile: 'secret.txt'.
```
  
The aim of this approach is to avoid leaking the secret through a saved Image. <br>
The secret is stored only in volatile memory which is nilled when the Image/VM quit.<br>
The address of this volatile memory is passed directly to the FFI signing function
without the secret touching the Image heap.

Check your system is correctly configured by evaluating... <p>
```smalltalk
   BittrexAPI configureCheckKeys
```
  
  
P.S. I'm new to Iceberg so advice welcome on improving the git workflow.

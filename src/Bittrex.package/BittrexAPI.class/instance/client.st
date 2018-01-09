accessing
client
	"For now just an individual instance, but later borrow one from a keep-alive pool."
	^ZnClient new
		https;
		enforceHttpSuccess: true;
		accept: ZnMimeType applicationJson;
		host: 'bittrex.com' .

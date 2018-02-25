installation
installWebsockets
	Gofer new
		smalltalkhubUser: 'SvenVanCaekenberghe' project: 'ZincHTTPComponents';
		package: 'ConfigurationOfZincHTTPComponents';
		load.
	(Smalltalk globals at: #ConfigurationOfZincHTTPComponents) project 
		latestVersion load: 'WebSocket'.
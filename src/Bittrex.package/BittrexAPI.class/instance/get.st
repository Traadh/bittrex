actions api
get
	^ [ rawResponse := client get ] 
	on: ZnHttpUnsuccessful
	do: [ :exception | Transcript crShow: exception ]
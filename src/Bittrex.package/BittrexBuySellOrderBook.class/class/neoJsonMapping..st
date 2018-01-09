accessing
neoJsonMapping: reader
	reader for: self do: [ :mapping | 
		(mapping mapInstVar: #buy) valueSchema: BittrexBuyOrderBook.
		(mapping mapInstVar: #sell) valueSchema: BittrexSellOrderBook.		
		].

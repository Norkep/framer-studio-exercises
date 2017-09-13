currentSelectedTab = "Name"

backgroundLayer = new BackgroundLayer 
	backgroundColor:"white"
 
navigationBar = new Layer 
	x:20
	y:10
	width:720
	height:99
	image:"images/navigationBar.png"

nameTab = new Layer 
	x:95
	y:136
	width:568
	height:61
	image:"images/name.png"

nameButton = new Layer
	x:95
	y:136
	width:197
	height:61
	backgroundColor:"transparent"

featuredTab = new Layer 
	x:95
	y:136
	width:568
	height:61
	image:"images/featured.png"
	opacity:0
	
featuredButton = new Layer
	x:475
	y:136
	width:185
	height:61
	backgroundColor:"transparent"

featuredButton.onClick (event, layer) ->
	if currentSelectedTab is "Name" 
		featuredTab.opacity = 1
		nameTab.opacity = 0
		currentSelectedTab = "Featured"
		print "Currently selected tab is: " + currentSelectedTab
	
nameButton.onClick (event, layer) ->
	if currentSelectedTab is "Featured" 
		nameTab.opacity = 0
		featuredTab.opacity = 1
		currentSelectedTab = "Name"
		print "Currently selected tab is: " + currentSelectedTab

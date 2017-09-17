currentSelectedTab = "name"

backgroundLayer = new BackgroundLayer 
	backgroundColor:"white"
 
navigationBar = new Layer 
	x:20
	y:10
	width:720
	height:99
	image:"images/navigationBar.png"

name = new Layer 
	x:95
	y:136
	width:568
	height:61
	image:"images/name.png"

feature = new Layer 
	x:95
	y:136
	width:568
	height:61
	image:"images/featured.png"
	opacity:0
	
featureButton = new Layer
	x:475
	y:136
	width:185
	height:61
	backgroundColor:"transparent"

featureButton.onTouchStart (event, layer) ->
	if currentSelectedTab is name 
		feature.opacity = 1
		name.opacity = 0
		currentSelectedTab = "feature"
	


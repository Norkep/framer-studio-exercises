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

# Old method, without states

# currentSelectedTab = "Name"
# 
# featuredButton.onClick (event, layer) ->
# 	if currentSelectedTab isnt "Featured" 
# 		currentSelectedTab = "Featured"
# 		featuredTab.opacity = 1
# 		nameTab.opacity = 0
# 		print "Currently selected tab is: " + currentSelectedTab
# 	
# nameButton.onClick (event, layer) ->
# 	if currentSelectedTab isnt "Name" 
# 		currentSelectedTab = "Name"
# 		nameTab.opacity = 1
# 		featuredTab.opacity = 0
# 		print "Currently selected tab is: " + currentSelectedTab

# New Method, with states

nameTab.states.add
	state1: 
		opacity: 0

featuredTab.states.add
	state1:
		opacity: 1

featuredButton.onClick ->
	nameTab.states.next()
	featuredTab.states.next()
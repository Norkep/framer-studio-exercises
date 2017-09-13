# Layer setup

background = new BackgroundLayer
	backgroundColor: "white"

navBar = new Layer 
	x: 0 
	y: 0
	width: 750
	height: 211
	image: "images/top.png"

appsList = new Layer 
	x: 0
	y: 210
	width: 750
	height: 2850
	image: "images/apps.png"
	
appsScrollable = ScrollComponent.wrap(appsList)
appsScrollable.scrollHorizontal = false

scrolling = false

appsList.onTap ->
	if not scrolling
		print "Tapped"
	else
		print "Tap prevented"

appsScrollable.onScrollStart ->
	scrolling = true
	if scrolling 
		print "It’s scrolling!"

appsScrollable.onScrollEnd ->
	scrolling = false
	if not scrolling 
		print "Scrolling stopped."
	


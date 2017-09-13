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

appsScrollable.onScrollStart ->
	scrolling = true
	print scrolling

appsS.onScrollEnd ->
	scrolling = false
	print scrolling
	


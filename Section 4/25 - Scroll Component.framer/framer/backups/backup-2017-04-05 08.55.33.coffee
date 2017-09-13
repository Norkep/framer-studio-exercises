background = new BackgroundLayer
	backgroundColor: "white"

scrollComponent = new ScrollComponent
	x: 0, y: 0, width: Screen.width, height: Screen.height, 
	scrollHorizontal: false, mouseWheelEnabled: true
	
scrollComponent.contentInset = { top: 211 }
# scrollComponent.content.draggable.overdrag = false
# scrollComponent.content.draggable.bounce = false

appsLayer = new Layer
	x:0, y:0, width:750, height:2850, image:"images/apps.png", 
	superLayer: scrollComponent.content
topLayer = new Layer
	x:0, y:0, width:750, height:211, image:"images/top.png"
	
scrollComponent.on Events.Scroll, ->
	print "hello"
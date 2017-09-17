background = new BackgroundLayer

scrollComponent = new ScrollComponent
	x: 0
	y: 0
	width: Screen.width
	height: Screen.height
	scrollHorizontal: false
	mouseWheelEnabled: true

appsLayer = new Layer
	x: 0
	y: 0
	width: 750
	height: 2850
	image:"images/apps.png"
	superLayer: scrollComponent.content

topLayer = new Layer
	x: 0
	y: 0
	width: 750
	height: 211
	image:"images/top.png"

# Set the scrollable area, accounting for the topLayer
scrollComponent.contentInset =
	top: topLayer.height
	bottom: 0


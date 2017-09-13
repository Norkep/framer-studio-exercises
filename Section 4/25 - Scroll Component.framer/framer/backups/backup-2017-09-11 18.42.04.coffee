background = new BackgroundLayer

scrollComponent = new ScrollComponent
	x: 0
	y: 210
	width: Screen.width
	height: Screen.height - 210
	scrollHorizontal: false
	mouseWheelEnabled: true

scro

appsLayer = new Layer
	x: 0
	y: 0
	width: 750
	height: 2850
	image:"images/apps.png"
	superLayer: scrollComponent.content

topLayer = new Layer
	x:0, y:0, width:750, height:211, image:"images/top.png"


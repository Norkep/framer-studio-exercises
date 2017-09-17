screen = new Layer
	width: Screen.width
	height: Screen.height
	backgroundColor: "salmon"
	
overlay = new Layer
	width: Screen.width * 0.7
	height: 200
	backgroundColor: "white"
	borderRadius: 3
	shadowSpread: 1
	shadowBlur: 23
	shadowX: 2
	shadowColor: "rgba(0,0,0,0.13)"

screenText = new TextLayer
	text: "Tap here"
	parent: screen
	x: Align.center
	y: Align.center
	color: screen.backgroundColor.lighten(30)

overlayText = new TextLayer
	text: "Hello!"
	parent: overlay
	x: Align.center
	y: Align.center
	color: overlay.backgroundColor.darken(40)
	
flow = new FlowComponent
flow.showNext(screen)

screen.onClick -> flow.showOverlayTop(overlay)
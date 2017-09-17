layerA = new Layer
	width: Screen.width
	height: Screen.height
	backgroundColor: "salmon"

layerB = new Layer
	width: Screen.width
	height: Screen.height
	backgroundColor: "black"
	
layerC = new Layer
	width: Screen.width
	height: Screen.height
	backgroundColor: "white"

flow = new FlowComponent
flow.showNext(layerA)

layerA.onClick -> flow.showNext(layerB)
layerB.onClick -> flow.showNext(layerC)
layerC.onClick -> flow.showPrevious()
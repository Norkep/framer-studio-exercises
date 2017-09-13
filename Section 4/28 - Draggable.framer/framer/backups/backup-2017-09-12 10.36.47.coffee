iconLayer = new Layer width:256, height:256, image:"images/framer-icon.png"
iconLayer.center()

iconLayer.draggable.enabled = true
iconLayer.draggable.constraints =
	x: iconLayer.x
	y: iconLayer.y
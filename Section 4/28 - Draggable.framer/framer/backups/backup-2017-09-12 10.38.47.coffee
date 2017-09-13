iconLayer = new Layer width:256, height:256, image:"images/framer-icon.png"
iconLayer.center()

initialPosition =
	x: iconLayer.x
	y: iconLayer.y
	scale: 2

iconLayer.draggable.enabled = true

iconLayer.on Events.DragEnd, ->
	@animate
		properties: initialPosition
		curve: Spring(100, 100, 10)

# iconLayer.draggable.constraints =
# 	x: iconLayer.x
# 	y: iconLayer.y
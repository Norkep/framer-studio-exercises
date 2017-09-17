iconLayer = new Layer width:256, height:256, image:"images/framer-icon.png"
iconLayer.center()

initialPosition =
	x: iconLayer.x
	y: iconLayer.y

iconLayer.draggable.enabled = true

iconLayer.on E

# iconLayer.draggable.constraints =
# 	x: iconLayer.x
# 	y: iconLayer.y
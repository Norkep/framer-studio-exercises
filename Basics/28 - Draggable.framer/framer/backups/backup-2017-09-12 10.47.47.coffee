background = new BackgroundLayer
	backgroundColor: "rgba(255, 255, 255, 1)"

iconLayer = new Layer width:256, height:256, image:"images/framer-icon.png"
iconLayer.center()

initialPosition =
	x: iconLayer.x
	y: iconLayer.y
	scale: iconLayer.scale
	opacity: iconLayer.opacity

iconLayer.animationOptions =
	time: 0.2

iconLayer.draggable.enabled = true

iconLayer.on Events.DragEnd, ->
	@animate
		properties: 
			initialPosition
		curve: Spring(100, 100, 10)
		time: 1

iconLayer.on Events.DragStart, ->
	@animate
		scale: 1.5
		opacity: 0.5

iconLayer.onDragMove (event, layer) ->
	x = layer.x
	y = layer.y
	background.backgroundColor = "hsla( x/ 225, 225, 225, 1)"
	

# iconLayer.draggable.constraints =
# 	x: iconLayer.x
# 	y: iconLayer.y
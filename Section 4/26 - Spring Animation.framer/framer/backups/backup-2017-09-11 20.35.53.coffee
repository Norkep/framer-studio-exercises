iconLayer = new Layer 
	width: 256
	height: 256
	image: "images/framer-icon.png"
		
iconLayer.center()

iconLayer.states =
	start:
		properties:
			y: 20 
	end:
		properties:
			y: 20

iconLayer.on Events.Click, ->
	@animate
		properties:
			y: 20
		curve: "spring"
iconLayer = new Layer 
	width: 256
	height: 256
	image: "images/framer-icon.png"
		
iconLayer.center()

iconLayer.states.add
	end:
		properties:
			y: 1000
		curve: "spring"

iconLayer.on Events.Click, ->
	@animate("end")
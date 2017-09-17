Framer.Defaults.Animation =
    curve: Spring(100, 10, 10)

iconLayer = new Layer 
	width: 256
	height: 256
	image: "images/framer-icon.png"
		
iconLayer.center()

iconLayer.states.add
	end:
		properties:
			y: 1000
# 		curve: "spring"
# 		curve: "spring(100,10,10)"

iconLayer.on Events.Click, ->
	@animate("end")
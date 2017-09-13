Framer.Defaults.Animation =
    curve: Spring(damping: 0.5, mass: 1.2, velocity: 2)

iconLayer = new Layer 
	width: 256
	height: 256
	image: "images/framer-icon.png"
		
iconLayer.center()

iconLayer.states.add
	end:
		properties:
			y: 1000
# 		curve: Spring
# 		curve: Spring(100,10,10)

iconLayer.on Events.Click, ->
	@animate("end")
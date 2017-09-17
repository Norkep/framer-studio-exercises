iconLayer = new Layer width:256, height:256, image:"images/framer-icon.png"
iconLayer.center()

iconLayer.onClick ->
	iconLayer.animate
		properties: 
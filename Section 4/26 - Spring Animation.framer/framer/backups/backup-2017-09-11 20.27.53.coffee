iconLayer = new Layer width:256, height:256, image:"images/framer-icon.png"
iconLayer.center()

iconLayer.on Events.Click, ->
	this.states =
		moveup:
		 y: 0
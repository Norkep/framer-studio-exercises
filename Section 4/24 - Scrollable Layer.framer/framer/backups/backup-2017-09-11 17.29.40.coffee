# Layer setup

appsScrollable = new Layer
	width: 750
	height: 1334 - this.y
	y: 210

navBar = new Layer 
	x: 0 
	y: 0
	width: 750
	height: 211
	image: "images/top.png"

appsList = new Layer 
	x: 0
	y: 0
	width: 750
	height: 2850
	image: "images/apps.png"
	superLayer: appsScrollable


	


# Framer.Defaults is a helper object we can use to set default values
# By default, animation timing will be 3s
Framer.Defaults.Animation.time = 5

IMG_2019 = new Layer
	height: 1334
	image: "images/IMG_2019.jpg"
	width: 740

photo1 = new Layer 
	x:0
	y:150
	width:190
	height:191
	image:"images/photo 1.jpg"
	opacity: 0

photo2 = new Layer 
	x: 183
	y: 150
	width: 190
	height: 191
	image: "images/photo 2.jpg"
	opacity: 0

photo3 = new Layer 
	x: 0
	y: 335
	width: 190
	height: 191
	image: "images/photo 3.jpg"
	opacity: 0

photo4 = new Layer 
	x: 0
	y: 335 
	width: 178
	height: 191
	image:"images/photo 4.jpg"
	opacity: 0

photo5 = new Layer 
	x:183
	y:335
	width:190
	height:191
	image:"images/photo 5.jpg"
	opacity: 0

photo6 = new Layer 
	x:0
	y:335
	width:190
	height:191
	image:"images/photo 6.jpg"
	opacity: 0

photo7 = new Layer 
	x:183
	y:150
	width:190
	height:191
	image:"images/photo 7.jpg"
	opacity: 0

photo8 = new Layer 
	x:0
	y:150
	width:185
	height:191
	image:"images/photo 8.jpg"
	opacity: 0

activityLabel = new Layer
	x: 8
	y: 468
	width: 300
	backgroundColor: "transparent"
	
activityLabel.html = "Activity"

activityLabel.style = 
	"font-size": "1.3em"
	"font-family": "HelveticaNeue"
	"text-shadow": "0px 0px 7px #000000"
 
photo1.animate
	properties:
		opacity: 1
	delay: 0

photo2.animate
	properties:
		opacity: 1
	delay: 1

photo3.animate
	properties:
		opacity: 1
	delay: 2

photo4.animate
	properties:
		opacity: 1
	delay: 3

photo5.animate
	properties:
		opacity: 1
	delay: 4

photo6.animate
	properties:
		opacity: 1
	delay: 5

photo7.animate
	properties:
		opacity: 1
	delay: 6

photo8.animate
	properties:
		opacity: 1
	delay: 7

appBackground = new Layer 
	x:0, y:0, width:750, height:1334, image:"images/search.jpg"

keyboard = new Layer
	width: 750
	height: 516
	image: "images/Keyboard + Suggestions.png"
	y: 1334

keyboard.states =
	shown:
		properties: 
			y: 818
		time: 0.3
		curve: "ease-out"
	
input = new Layer
	x: 31
	y: 184
	width: 678
	height: 72
	backgroundColor: "rgba(123,123,123,0)"

input.onClick ->
	keyboard.animate("shown")
	
appBackground.on
if keyboard.states.current.name is "shown"	
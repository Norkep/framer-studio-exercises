appBackground = new Layer 
	x: 0
	y: 0
	width: 750
	height: 1334
	image: "images/search.jpg"

keyboard = new Layer
	width: 750
	height: 516
	image: "images/Keyboard + Suggestions.png"
	y: 1334

keyboard.animationOptions =
	time: 0.3
	curve: "ease-out"

keyboard.states =
	shown:
		properties: 
			y: 818
		
input = new Layer
	x: 31
	y: 184
	width: 678
	height: 72
	backgroundColor: "rgba(123,123,123,0)"

if keyboard.states.current.name is "default"
	input.on Events.Tap, () ->
		keyboard.animate("shown")
		@ignoreEvents = true

if keyboard.states.current.name is "default"		
	appBackground.on Events.Tap, (event) ->
		keyboard.animate("default")
# Constants

Framer.Defaults.Animation.time = 0.2

color = new Color (	"rgba(0,100,128,1)" )

# Create slider

slider = new SliderComponent
	knobSize: 50
	width: Screen.width - 200
	backgroundColor: color.desaturate( @value ).lighten( @value )
	value: 0
	min: 0
	max: 10

slider.center()

slider.fill.backgroundColor = color.desaturate(1).darken( slider.value )

# Create background

background = new BackgroundLayer
	backgroundColor: color.desaturate(slider.value)

# Create number counter

counter = new Layer
	html: slider.value
	style:
		"text-align": "center"
		"font-size": "100px"
		"color": color.darken( (slider.value + 1) * 6 )
	backgroundColor: "transparent"
	x: 275
	y: 510

# Create reset button

resetButton = new Layer
	html: "reset"
	x: 275
	y: 1183
	backgroundColor: "rgba(123,123,123,0)"
	opacity: 0
	style:
		"text-align": "center"
		"font-size": "100px"
		"color": color.darken( (slider.value + 1) * 6 )

resetButton.onClick ->
	slider.animateToValue 0,
		curve: "ease-in-out"

# Change handler

slider.on "change:value", ->
	background.backgroundColor = color.lighten( slider.value * 6 )
	counter.html = Math.round slider.value
	if slider.value > 0
		resetButton.animate
			opacity: 1
	if slider.value is 0
		resetButton.animate
			opacity: 0


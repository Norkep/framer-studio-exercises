background = new BackgroundLayer

Framer.Defaults.Animation.curve = Spring(10, 20, 10)

themeColor = new Color("salmon")
accentColor = themeColor.lighten(18).desaturate(15)

circle = new Layer
	backgroundColor: themeColor
	color: accentColor
	width: Screen.width * 0.6
	height: Screen.width * 0.6
	html: "HODL"
	style: 
		"text-align": "center"
		"display": "flex"
		"justify-content": "center"
		"align-items": "center"
		"font-family": "Circular"
		"font-weight": "Bold"
		"font-size": "60px"
	x: Align.center
	y: Align.center
	borderRadius: 2000

circle.states =
	inverse:
		backgroundColor: accentColor
		color: themeColor
		scale: 1.2
		shadowColor: themeColor
		shadowSpread: 3
		shadowY: 2
		shadowBlur: 25

circle.onTapStart ->
	@animate("inverse")

circle.onTapEnd ->
	@animate("default")
	
# print Color.isColor("salmon") // -> true
# print Color.isColor("purrple") // -> NaN
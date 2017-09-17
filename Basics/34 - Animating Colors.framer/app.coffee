Framer.Defaults.Animation.time = 10
Framer.Defaults.Animation.colorModel = "husl"


SIZE = 100
GUTTER = 50

COLOR_1 = "blue"
COLOR_2 = "red"

layerA = new Layer
	backgroundColor: COLOR_1
	width: SIZE
	height: SIZE
	x: Align.center
	y: Align.center

layerB = new Layer
	backgroundColor: COLOR_1
	width: SIZE
	height: SIZE
	x: Align.center
	y: Align.center

layerC = new Layer
	backgroundColor: COLOR_1
	width: SIZE
	height: SIZE
	x: Align.center
	y: Align.center

layerA.x -= SIZE + GUTTER
layerC.x += SIZE + GUTTER

layerA.animate
	properties:
		backgroundColor: COLOR_2
	colorModel: "husl"

layerB.animate
	properties:
		backgroundColor: COLOR_2
	colorModel: "hsl"

layerC.animate
	properties:
		backgroundColor: COLOR_2
	colorModel: "rgb"
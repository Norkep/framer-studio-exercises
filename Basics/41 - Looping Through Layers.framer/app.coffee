SIZE = 70
MULTIPLE = 14
PADDING = MULTIPLE / 2
MARGIN = 150

canvas = new Layer
	width: Screen.width
	height: Screen.height
	backgroundColor: "transparent"

canvas.draggable.enabled

canvas.draggable.constraints = 
	x: parent.x
	y: parent.y

for i in [0..MULTIPLE]
	COLOR = new Color
		h: i / MULTIPLE * 320
		
	layer = new Layer
		parent: canvas
		width: SIZE
		height: SIZE
		x: Align.center
		y: i/2 * (PADDING + SIZE) + MARGIN
		z: i * 65
		rotation: 45 + -0.5 * i
		skewX: MULTIPLE
		skewY: MULTIPLE
		backgroundColor: COLOR
		opacity: 0.9
		originX: i / MULTIPLE
		borderRadius: i * 0.2
		blur: (MULTIPLE - i) / MULTIPLE
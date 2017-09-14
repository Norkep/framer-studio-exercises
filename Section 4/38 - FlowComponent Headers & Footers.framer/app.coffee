COLOR = new Color "rgba(10,60,100,1)"
COLOR_LIGHT_ACCENT = COLOR.lighten(60)
COLOR_DARK_ACCENT = COLOR.darken(20)

FONT_DISPLAY = "Circular"
FONT_TEXT = "Flow-Rounded"


# =============================== #
# MAIN CONTENT #
# =============================== #

# Scroll frame

scroll = new ScrollComponent
	height: Screen.height
	width: Screen.width
	scrollHorizontal: false
	backgroundColor: COLOR

# Text

headline = new TextLayer
	x: Align.center
	y: Align.top
	width: Screen.width * 0.9
	font: FONT_DISPLAY
	lineHeight: 1.3
	fontSize: 74
	parent: scroll.content
	color: COLOR.lighten(60)
	style:
		"margin-top": "150px"

text = new TextLayer
	x: Align.center
	y: Align.top
	width: Screen.width * 0.9
	height: 7600
	font: FONT_TEXT
	fontSize: 38
	parent: scroll.content
	color: COLOR_LIGHT_ACCENT
	style:
		"margin-top": "400px"

headline.text = "A Blueprint for World Domination"
text.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it? Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.Where can I get some. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don’t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn’t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it? Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.Where can I get some. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don’t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn’t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."


# =============================== #
# HEADER #
# =============================== #

# Make header layer

header = new Layer
	width: Screen.width
	height: 120
	opacity: 0
	backgroundColor: COLOR
	color: COLOR_LIGHT_ACCENT
	html: headline.text
	shadowSpread: 4
	shadowColor: "rgba(0,0,0,0.6)"
	shadowX: 2
	shadowBlur: 29
	index: 10
	style:
		"display": "flex"
		"justify-content": "center"
		"align-items": "center"
		"font-family": FONT_DISPLAY
		"font-weight": "bold"
		"font-size": "30px"

# Define header states

header.states = 
	hidden:
		properties:
			opacity: 0
			y: -(header.height)
		time: 0.15		
	shown:
		properties:
			opacity: 1
			y:0
		time: 0.15

# Set default state for header

header.stateSwitch "hidden"

# Scroll animations

scroll.onScroll ->
	if scroll.scrollY >= headline.maxY + headline.height
		header.animate "shown"
	if scroll.scrollY < headline.maxY + headline.height
		header.animate "hidden"


# =============================== #
# FOOTER #
# =============================== #

# Make footer layer

footer = new Layer
	width: Screen.width
	height: 120
	backgroundColor: COLOR_LIGHT_ACCENT
	color: COLOR_DARK_ACCENT
	html: "Share this article ▸"
	style:
		"display": "flex"
		"justify-content": "center"
		"align-items": "center"
		"font-family": FONT_DISPLAY
		"font-weight": "bold"
		"font-size": "30px"

# Share modal

shareModal = new Layer
	width: Screen.width * 0.9
	height: 900
	backgroundColor: COLOR_LIGHT_ACCENT
	borderRadius: 6

footer.onTap ->
	flow.showOverlayBottom(shareModal)


# =============================== #
# PROTOTYPE FLOW #
# =============================== #

flow = new FlowComponent

# Default first screen
flow.showNext(scroll)

# Set header and footer
flow.header = header
flow.footer = footer
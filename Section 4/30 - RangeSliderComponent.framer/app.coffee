# Constants

TEXT_CSS_STYLE =
	"font-size": "45px"
	"text-align": "center"
TEXT_COLOR = "black"
TEXT_BACKGROUND_COLOR = "transparent"

SLIDER_KNOB_SIZE = 60

TOOLTIP_Y_OFFSET = 100

DEFAULT_MIN_VALUE = 18
DEFAULT_MAX_VALUE = 45


# Create background layer

background = new BackgroundLayer
	backgroundColor: "rgba(245,245,245,1)"


# Create RangeSlider

range = new RangeSliderComponent
	x: Align.center
	y: Align.center
	min: 0
	max: 100
	minValue: DEFAULT_MIN_VALUE
	maxValue: DEFAULT_MAX_VALUE
	knobSize: SLIDER_KNOB_SIZE
	width: Screen.width - 150

minValueTooltip = new Layer
	y: range.y - TOOLTIP_Y_OFFSET
	x: range.minKnob.x + range.x
	width: SLIDER_KNOB_SIZE
	height: SLIDER_KNOB_SIZE
	html: range.minValue
	backgroundColor: TEXT_BACKGROUND_COLOR
	color: TEXT_COLOR
	style: TEXT_CSS_STYLE

maxValueTooltip = new Layer
	y: range.y - TOOLTIP_Y_OFFSET
	x: range.maxKnob.x + range.x
	width: SLIDER_KNOB_SIZE
	height: SLIDER_KNOB_SIZE
	html: range.maxValue
	backgroundColor: TEXT_BACKGROUND_COLOR
	color: TEXT_COLOR
	style: TEXT_CSS_STYLE


# Change Handler

range.onValueChange ->
	
	minValueTooltip.x = range.minKnob.x + range.x
	minValueTooltip.html = Math.round range.minValue
	
	maxValueTooltip.x = range.maxKnob.x + range.x
	maxValueTooltip.html = Math.round range.maxValue


# Create reset button

resetButton = new Layer
	html: "reset"
	x: 275
	y: 1183
	color: TEXT_COLOR
	backgroundColor: TEXT_BACKGROUND_COLOR
	style: TEXT_CSS_STYLE

resetButton.onClick ->
	range.animateToMinValue DEFAULT_MIN_VALUE,
		curve: "ease-in-out"
	range.animateToMaxValue DEFAULT_MAX_VALUE,
		curve: "ease-in-out"
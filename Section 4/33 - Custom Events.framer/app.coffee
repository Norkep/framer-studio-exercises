layer = new Layer

timesClicked = 0

layer.draggable = true

layer.onClick ->
	timesClicked++
	if timesClicked >= 3
		layer.emit "ready"

layer.on "ready", ->
	print timesClicked

layer.onDrag ->
	layer.emit "ready"
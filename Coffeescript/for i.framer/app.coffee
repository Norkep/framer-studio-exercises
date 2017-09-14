

# We iterate hover an array of numbers from 0 to 20, on each iteration, the variable i has the value of the array. [0..20] creates an array of 21 values. First one is 0 and last one is 20
for i in [0..20]
	print i

# Now let's do another example
layer1 = new Layer
layer2 = new Layer
layer3 = new Layer

test = [layer1, layer2, layer3] # This is an array of layers

# We iterate over the array and on every iteration, the variable i has the next value of the array
for i in test
	print i
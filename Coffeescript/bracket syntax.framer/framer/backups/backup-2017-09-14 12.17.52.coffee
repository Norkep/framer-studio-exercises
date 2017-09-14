# NOTE: What is explained here only applies to coffeescript, not to pure javascript.

# Parenthesis are for grouping
if 1 == 2 && 2 == 3 && (3 == 4 || 2 == 5)
	print 1
	
# Or just for clarification
if (1 == 2 && 2 == 3)
	print 1
	
# Parenthesis are also needed if you are calling a function or method
test = ->
	print 1
test()
test # This is not working as without parenthesis you are accessing a variable and not executing the function

# Also parenthesis specify the arguments of a function
playASong = (songName, secondsToStartFrom) ->
	print "Playing #{songName} starting at second #{secondsToStartFrom}"
playASong("A cool song", 10)

# But note that if you are passing paramethers like we did just now, the parenthesis can be omitted
playASong "A cool song", 10

# Curly brackets are for properties of objects
car = { color: "red", doors: 4 }
animal = {
	type: "elephant",
	name: "Dumbo"
}

# But thanks to coffeescript, they can be ommited
car = color: "red", doors: 4
animal =
	type: "elephant", # Thanks to coffeescript this comma at the end can also be omitted
	name: "Dumbo"
	age: 4
	
# Also as previously seen, courly brackets can concatenate variables to strings if they are preceded with #
print "This is my animal of type #{animal.type} and his name is #{animal.name}"

# Brackets are just for creating arrays
friendsAges = [10, 22, 9, 34, 12]
mySetOfElements = [car, animal]

# And for accesing them
print friendsAges[2]
print mySetOfElements[1]

# Also they are used for some special coffeescript things, like this one:
for i in [0...10]
	print i











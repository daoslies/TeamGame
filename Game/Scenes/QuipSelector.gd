extends RichTextLabel

#import character


var seconds = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	text = "Hello world!"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = str(seconds)
	seconds+=1
	pass
	
#import all the character files
## list of character names
# initialise character of that name


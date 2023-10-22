extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = "0"

	pass # Replace with function body.

#var display = "test1"
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = self.text

	pass

func displayText(text2set):
	
	self.text = str(int(text2set))

	

	
func _on_button_pressed():

	#self.outcome = text
	pass # Replace with function body.


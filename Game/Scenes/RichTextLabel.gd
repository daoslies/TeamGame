extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = self.text
	pass
	
func displayText(text2set):
	
	self.text = str(int(text2set))

	
	

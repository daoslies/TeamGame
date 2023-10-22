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
	var Character = get_node("/root/GetCharacter")
	print('clicked',)
	
	var DiceSize = Character.personify.DiceSize

		# rand num generator
	var rand_num_gen = RandomNumberGenerator.new()		
	var roll = int(rand_num_gen.randf_range(1, DiceSize))
	displayText(roll)
	#self.outcome = text
	pass # Replace with function body.


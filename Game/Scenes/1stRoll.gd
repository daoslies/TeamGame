extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	
	self.text = "0"
	
	#self.roll = str(0)

	pass # Replace with function body.

#var display = "test1"
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	pass

func displayText(num):
	
	print('Here', num)
	
	self.text = str(int(num))
	print('Roll: ', self.text)
	
	return self.text


func _on_button_pressed():
	var Character = get_node("/root/GetCharacter")
	print('clicked',)
	
	
	var DiceSize = Character.personify.DiceSize

		# rand num generator
	var rand_num_gen = RandomNumberGenerator.new()		
	var randum_num = str(int(rand_num_gen.randf_range(1, DiceSize)))
	
	text = str(randum_num)
	#self.outcome = text
	pass # Replace with function body.
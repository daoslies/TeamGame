extends RichTextLabel

var roll_one

# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = "0"
	self.roll_one = -5

	#self.roll = str(0)

	pass # Replace with function body.

#var display = "test1"
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#roll_one = self.roll_one
	#print(roll_one)

	pass

func displayText(roll_one):
	
	print('Here', roll_one)
	
	self.text = str(int(roll_one))
	print('Roll: ', self.text)
	
	return self.text

# inherit the num for display
# trigger a function to create randum num
# rnadom num sent to display text

	

	
func _on_button_pressed():
	var Character = get_node("/root/GetCharacter")
	print('clicked',)
	
	var DiceSize = Character.personify.DiceSize

		# rand num generator
	var rand_num_gen = RandomNumberGenerator.new()		
	roll_one = int(rand_num_gen.randf_range(1, DiceSize))
	self.roll_one = roll_one
	text = str(roll_one)
	#self.outcome = text
	pass # Replace with function body.

func get_roll():
	print('Get roll: ', self.roll_one)
	return self.roll_one

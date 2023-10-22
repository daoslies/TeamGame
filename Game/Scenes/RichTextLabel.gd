extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func HigherOrLower(dice1, dice2):
	print('x    s',dice1.text)
	print(dice2.text)
	print('Dice 1: ', dice1._get_property_list())
	print('Dice 2: ', dice2)
	var result = (
	"Higher_" if int(dice1.text) > int(dice2.text)
	else "Same" if int(dice1.text) == int(dice2.text)
	else "Lower" if int(dice1.text) < int(dice2.text)
	else "Inconclusive"
	)
	
	return result
	
	

func _on_higher_pressed():
	var Dice1 = get_node("/root/FirstRoll")
	var Dice2 = get_node("/root/SecondRoll")
	var result = HigherOrLower(Dice1, Dice2)
	print(Dice1, "xoxox xoxoxo xoxoo")
	
	text = result
	
	pass # Replace with function body.

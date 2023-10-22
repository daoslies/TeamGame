extends Node2D

var Dice1 
var Dice2 
var DidYaWin
# Called when the node enters the scene tree for the first time.
func _ready():
	
	Dice1 = get_node("/root/FirstRoll")
	Dice2 = get_node("/root/SecondRoll")
	DidYaWin = get_node("RollLabels/DidYaWin")

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func HigherOrLower(dice1, dice2):
	print('Dice 1: ', dice1)
	print('Dice 2: ', dice2)
	var result = (
	"Higher_" if int(dice1) > int(dice2)
	else "Same" if int(dice1) == int(dice2)
	else "Lower" if int(dice1) < int(dice2)
	else "Inconclusive"
	)
	
	return result

func _on_higher_pressed():
	print("Higher_richtext")

	var result = HigherOrLower(3,6)  #Dice1, Dice2)

	Dice1.text = result
	DidYaWin.text = result
	print('Dice1.text: ', Dice1.text, 'result', result)
	pass # Replace with function body.


func _on_same_pressed():
	pass # Replace with function body.


func _on_lower_pressed():
	pass # Replace with function body.
	
func get_roll():
	print('Get roll: ', self.roll_one)


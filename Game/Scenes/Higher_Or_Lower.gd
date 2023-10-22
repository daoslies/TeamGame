extends Node2D

var Dice1 
var Dice2 
var DidYaWin
var quipSelector
var ScoreLabel
var Player_ScoreCounter
var Enemy_ScoreCounter
var Roll1
var Roll2
var health
var score2beat
var roundOver
var roundCount
var isRoundWin

var loss
# Called when the node enters the scene tree for the first time.
func _ready():
	
	Dice1 = get_node("RollLabels/1stRoll")   #"/root/FirstRoll")
	Dice2 = get_node("RollLabels/2stRoll")
	DidYaWin = get_node("RollLabels/DidYaWin")
	quipSelector = get_node("QuipBox/QuipText")
	ScoreLabel = get_node("RollLabels/Score")
	Player_ScoreCounter = 0
	Enemy_ScoreCounter = 0
	roundOver = false
	roundCount = 0
	isRoundWin = null
	
	health = quipSelector.Character.personify.Health
	score2beat = str(int(health / 2)+1) 
	

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	ScoreLabel.text = str(Player_ScoreCounter) + ' / ' + score2beat + "     VS     " + str(Enemy_ScoreCounter) + ' / ' + score2beat
	
	if roundOver:
		if isRoundWin:
			ScoreLabel.text = ScoreLabel.text + "YOU BEAT THEM"
		else:
			ScoreLabel.text = ScoreLabel.text + "YOU R LOSE"
	pass

func HigherOrLower(dice1, dice2):
	print('Dice 1: ', dice1)
	print('Dice 2: ', dice2)
	print(dice1, dice2)
	var result = (
	"Higher" if int(dice1) < int(dice2)
	else "Same" if int(dice1) == int(dice2)
	else "Lower" if int(dice1) > int(dice2)
	else "Inconclusive"
	)
	
	return result
	
func isCorrect(prediction, label):
	
	if prediction == label:
		loss = 'Win'
		Player_ScoreCounter += 1
		
	else:
		loss = 'Lose'
		Enemy_ScoreCounter += 1
		
	quipSelector.text = quipSelector._filler_quips(quipSelector.fillerQuips)
	
	if Player_ScoreCounter >= int(score2beat):
		roundOver = true
		isRoundWin = true
		
	if Enemy_ScoreCounter >= int(score2beat):
		roundOver = true
		isRoundWin = false
	


func _on_higher_pressed():
	
	Roll2 = roll()
	Dice2.text = str(Roll2)

	var result = HigherOrLower(Roll1,Roll2)  #Dice1, Dice2)

	DidYaWin.text = result 
	
	isCorrect('Higher', result)
	

	pass # Replace with function body.


func _on_same_pressed():
	Roll2 = roll()
	Dice2.text = str(Roll2)

	var result = HigherOrLower(Roll1,Roll2)  #Dice1, Dice2)

	DidYaWin.text = result
	isCorrect('Same', result)
	pass # Replace with function body.


func _on_lower_pressed():
	Roll2 = roll()
	Dice2.text = str(Roll2)

	var result = HigherOrLower(Roll1,Roll2)  #Dice1, Dice2)

	DidYaWin.text = result
	isCorrect('Lower', result)
	pass # Replace with function body.
	
func random_num_gen(DiceSize):
	var rand_num_gen = RandomNumberGenerator.new()		
	var num = int(rand_num_gen.randf_range(1, DiceSize))
	return num
	
	
func roll():
	var Character = get_node("/root/GetCharacter")
	print('Rolling...',)
	var DiceSize = Character.personify.DiceSize
	var roll = random_num_gen(DiceSize)
	
	return roll




func _on_start_button_pressed():
	Roll1 = roll()
	Dice1.text = str(Roll1)

	pass # Replace with function body.

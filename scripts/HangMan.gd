extends Node2D

#export (String, DIR) var words = "res://scripts/words.gd"
var words = [
	'Terrifying',
	'Macabre', 
	'Frightening', 
	'Sinister', 
	'Bloodcurdling',
	'Phantasmal',
	'Supernatural',
	'Crepuscular', 
	'Cursed',
	'Creepifying',
	'Morbid',
	'Witching',
	'Decapitation', 
	'Maniac', 
	'Paranoiac',
	'Psychopath',
	'Gore', 
	'Brutality',
	'Apprehension', 
	'Panic', 
	'Terror', 
	'Horror', 
	'Creepiness', 
	'Nightmarish', 
	'Shock',
	'Exsanguination',
	'Phantasmagoric', 
	'Eldritch', 
	'Abomination',
	'Sanguine'
]

func _ready():
	var live = 6
	var choice
	var num
	var letter 
	var word
	var guessedLetters = ""
	
func clear_game():
	pass

func validate_input():
	#while (choice < 1 || choice > 4):
		pass

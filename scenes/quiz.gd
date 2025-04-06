extends Node2D

var questionNum = 1
var questionsCorrect = 0
var wordsInQuestions = []
var totalQuestions : int
@onready var questionText = $questionBlud
@onready var infoLord = $infoLord

func _ready() -> void:
	var quizDifficulty = infoLord.globalQuizDif
	var shuffled_keys = infoLord.words.keys()
	shuffled_keys.shuffle()
	
	if quizDifficulty == 1:
		wordsInQuestions = shuffled_keys.slice(0,3)
		totalQuestions = 3

	print(wordsInQuestions)
	questionText.set_text("What is the meaning of '" + wordsInQuestions[questionNum] + "'?")

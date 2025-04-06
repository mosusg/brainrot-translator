extends Node2D

var questionNum = 0 
var questionsCorrect = 0
var wordsInQuestions = []
var totalQuestions = 0
var correctButton : int

@onready var questionText = $Game/questionBlud
@onready var scoreText = $Game/scoreBlud
@onready var infoLord = $infoLord
@onready var buttonOne = $"Game/Option 1"
@onready var buttonTwo = $"Game/Option 2"
@onready var buttonThree = $"Game/Option 3"
@onready var buttonFour = $"Game/Option 4"

func _ready() -> void:
	chooseWords()
	scoreText.set_text(str(questionsCorrect) + "/" + str(totalQuestions))

func _on_option_1_pressed() -> void:
	if correctButton == 0:
		questionsCorrect += 1
	chooseWords()
	scoreText.set_text(str(questionsCorrect) + "/" + str(totalQuestions))
	print(questionsCorrect)

func _on_option_2_pressed() -> void:
	if correctButton == 1:
		questionsCorrect += 1
	chooseWords()
	scoreText.set_text(str(questionsCorrect) + "/" + str(totalQuestions))
	print(questionsCorrect)

func _on_option_3_pressed() -> void:
	if correctButton == 2:
		questionsCorrect += 1
	chooseWords()
	scoreText.set_text(str(questionsCorrect) + "/" + str(totalQuestions))
	print(questionsCorrect)

func _on_option_4_pressed() -> void:
	if correctButton == 3:
		questionsCorrect += 1
	chooseWords()
	scoreText.set_text(str(questionsCorrect) + "/" + str(totalQuestions))
	print(questionsCorrect) 
	
func chooseWords():
	var quizDifficulty = infoLord.globalQuizDif
	var shuffled_keys = infoLord.words.keys()
	shuffled_keys.shuffle()
	
	if quizDifficulty == 1:
		wordsInQuestions = shuffled_keys.slice(0,3)
		totalQuestions = 3
	elif quizDifficulty == 2:
		wordsInQuestions = shuffled_keys.slice(0,10)
		totalQuestions = 10
	elif quizDifficulty == 3:
		wordsInQuestions = shuffled_keys.slice(0,20)
		totalQuestions = 20
	
	var correctAnswer = wordsInQuestions[questionNum]

	shuffled_keys.erase(wordsInQuestions[questionNum])

	var incorrectAnswers = shuffled_keys.slice(0, 3)

	var options = [correctAnswer] + incorrectAnswers.slice(0, 3)

	options.shuffle()

	buttonOne.set_text(infoLord.words[options[0]]["DEFINITION"])
	buttonTwo.set_text(infoLord.words[options[1]]["DEFINITION"])
	buttonThree.set_text(infoLord.words[options[2]]["DEFINITION"])
	buttonFour.set_text(infoLord.words[options[3]]["DEFINITION"])

	correctButton = options.find(correctAnswer)

	# Update the question text
	questionText.set_text("What is the meaning of '" + correctAnswer + "'?")

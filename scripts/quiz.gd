extends Node2D

var questionNum = 1
var questionsCorrect = 0
var wordsInQuestions = []
var totalQuestions = 0
var correctButton : int

@onready var endContainer = $ResultsBlud
@onready var percentScore = $ResultsBlud/Panel/perccentScore
@onready var fractionScore = $ResultsBlud/Panel/Fraction
@onready var message = $ResultsBlud/thingy/wRizz
@onready var questionText = $Game/questionBlud
@onready var scoreText = $Game/scoreBlud
#@onready var infoLord = $infoLord
@onready var theGame = $Game
@onready var buttonOne = $"Game/Option 1"
@onready var buttonTwo = $"Game/Option 2"
@onready var buttonThree = $"Game/Option 3"
@onready var buttonFour = $"Game/Option 4"

func _ready() -> void:
	endContainer.visible = false
	theGame.visible = true
	chooseWords()
	scoreText.set_text(str(questionsCorrect) + "/" + str(totalQuestions))

func _on_option_1_pressed() -> void:
	if correctButton == 0:
		setUpEnd()
	if questionNum == totalQuestions:
		theGame.visible = false
	else:
		chooseWords()
		theGame.visible = true
	scoreText.set_text(str(questionsCorrect) + "/" + str(totalQuestions))
	questionNum += 1

func _on_option_2_pressed() -> void:
	if correctButton == 1:
		questionsCorrect += 1
	if questionNum == totalQuestions:
		setUpEnd()
	else:
		chooseWords()
		theGame.visible = true
	scoreText.set_text(str(questionsCorrect) + "/" + str(totalQuestions))
	questionNum += 1

func _on_option_3_pressed() -> void:
	if correctButton == 2:
		questionsCorrect += 1
	if questionNum == totalQuestions:
		setUpEnd()
	else:
		chooseWords()
		theGame.visible = true

	scoreText.set_text(str(questionsCorrect) + "/" + str(totalQuestions))
	questionNum += 1

func _on_option_4_pressed() -> void:
	if correctButton == 3:
		questionsCorrect += 1
	if questionNum == totalQuestions:
		setUpEnd()
	else:
		chooseWords()
		theGame.visible = true
		
	scoreText.set_text(str(questionsCorrect) + "/" + str(totalQuestions))
	questionNum += 1
	
func chooseWords():
	var quizDifficulty = infoLord.globalQuizDif
	print(quizDifficulty)
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

func setUpEnd():
	theGame.visible = false
	var percent = float(questionsCorrect) / totalQuestions * 100
	percentScore.set_text(str(round(percent)) + "%")
	fractionScore.set_text(str(questionsCorrect) + "/" + str(totalQuestions))
	
	if questionsCorrect / totalQuestions <= 0.33:
		message.set_text("L Rizz!")
	elif questionsCorrect / totalQuestions <= 0.7:
		message.set_text("Mid Rizz!")
	elif questionsCorrect / totalQuestions <= 0.9:
		message.set_text("W Rizz!")
		
	
	endContainer.visible = true

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/app.tscn")

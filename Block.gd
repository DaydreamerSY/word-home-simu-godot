extends Node2D
export var word = "a"
export var score = 10
signal on_button_click(word, score)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func setDefaultWordScore():
	$WordButton/Word.text = word
	$WordButton/Score.text = str(score)
	
	
func setPosition():
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	setDefaultWordScore()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	emit_signal("on_button_click", word, str(score))
	pass # Replace with function body.

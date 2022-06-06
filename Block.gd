extends Node2D
export var word = "a"
export var score = 10
signal on_button_click(word, score)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func setDefaultWordScore():
	$TextureButton/Word.text = word
	$TextureButton/Score.text = str(score)
	
	
func setPosition():
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	setDefaultWordScore()
	pass # Replace with function body.


func _on_TextureButton_pressed():
	emit_signal("on_button_click", word, str(score))
	pass # Replace with function body.


func _on_TextureButton_mouse_entered():
	if Input.is_action_pressed("click"):
		print("mouse is hold when enter this shit!")
	else:
		print("mouse enter this shit with out hold")
	pass # Replace with function body.

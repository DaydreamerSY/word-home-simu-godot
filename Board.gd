extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Word.text = ""
	$Score.text = "0"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#
#func _on_Block_on_button_click(word, score):
#	$Word.text = word
#	$Score.text = str(int($Score.text) + int(score))


func _on_MainScreen__emit_Words_pressed(clicked_word, clicked_score):
	$Word.text += clicked_word
	$Score.text = str(int($Score.text) + int(clicked_score))

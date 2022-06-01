extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	python_call()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func python_call():
	var stdout = []
	var exit = OS.execute("python3", ["script.py"], true, stdout)
	if exit == OK:
		print_debug(stdout)
		print_debug(typeof(stdout))


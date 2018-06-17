extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
onready var player = get_node("../Player")

var _ypos = 0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)
	set_process_input(true)
	
func _input(event):
	if (event.type == InputEvent.KEY):
		if (event.scancode == KEY_ESCAPE):
			get_tree().quit()
	
func _process(delta):
	_ypos -= player.speed * delta
	set_region_rect(Rect2(0, _ypos, 640, 960))

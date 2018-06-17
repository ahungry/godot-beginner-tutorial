extends RigidBody2D

var _player = null

func _ready():
	_player = get_node("../Player")
	set_process(true)

func _process(delta):
	var current_pos = get_pos()
	current_pos.y = current_pos.y + _player.speed * delta
	set_pos(current_pos)

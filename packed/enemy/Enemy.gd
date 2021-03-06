extends RigidBody2D

var _player = null
var _speed_factor = 0.5

func _ready():
  _player = get_node("../Player")
  add_to_group("enemy")
  set_process(true)

func _process(delta):
  # Math way
	# var current_pos = get_pos()
	# current_pos.y = current_pos.y + _player.speed * delta
	# set_pos(current_pos)
  # Vector way
  set_pos(get_pos() + Vector2(0, _player.speed * _speed_factor * delta))

func hit_by_player():
  set_process(false)
  set_mode(MODE_RIGID)
  set_linear_velocity(Vector2(0, -_player.speed * _speed_factor))

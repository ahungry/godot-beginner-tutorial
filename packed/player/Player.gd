extends RigidBody2D

var speed = 0
var _max_speed = 500
var _acceleration = 0

func _ready():
  set_process(true)

func _process(delta):
  speed += _acceleration
  speed = min(speed, _max_speed)
  if (speed < _max_speed):
      _acceleration += delta

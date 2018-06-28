extends TouchScreenButton

var _player = null

func _ready():
  _player = get_node("../Player")
  connect("pressed", self, "_on_pressed")
  connect("released", self, "_on_released")

func _on_pressed():
  print("Pushed me")
  _player._bdirection = 1

func _on_released():
  print("Released me")
  _player._bdirection = 0

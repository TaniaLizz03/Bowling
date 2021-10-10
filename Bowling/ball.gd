extends RigidBody2D

var id = 0

func _ready():
	gravity_scale = 0.0
	if id==0: impulse(Vector2(900,30))

func impulse(amount):
	apply_central_impulse(amount)
	angular_velocity = amount.length() / 10

func _on_ball_body_entered(body):
	if body.name.substr(0,4) == "ball":
		var mag = linear_velocity.abs().length()
		mag = clamp(mag, 10, 500)
		$rebote.volume_db = range_lerp(mag, 500, 10, 1, -50)
		$rebote.play()

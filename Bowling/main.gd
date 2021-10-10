extends Node2D

const Balls = [
	 preload("res://images/0.png"),
	 preload("res://images/1.png"),
	 preload("res://images/2.png"),
	 preload("res://images/3.png"),
	 preload("res://images/4.png"),
	 preload("res://images/5.png"),
	 preload("res://images/6.png"),
	 preload("res://images/7.png"),
	 preload("res://images/8.png"),
	 preload("res://images/9.png"),
	 preload("res://images/10.png"),
]
const POS = [
	Vector2(100,300), Vector2(460,300), 
	Vector2(500,300), Vector2(500,260), 
	Vector2(500,360), Vector2(560,220),
	Vector2(560,260), Vector2(560,300),
	Vector2(560,360), Vector2(560,420),
	Vector2(560,200)
]

onready var ball = preload("res://ball.tscn")

func _ready():
	for i in range(10):
		var b = ball.instance()
		b.id = i
		b.name = "ball"+str(i)
		b.set_position(POS[i])
		b.get_node("sprite").set_texture(Balls[i])
		add_child(b)
		
		


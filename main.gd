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
	Vector2(100,300),
	
	Vector2(1300,290), 
	Vector2(1360,280), Vector2(1360,320),
	Vector2(1420,270), Vector2(1420,310), Vector2(1420,340), 
	Vector2(1480,260), Vector2(1480,300), Vector2(1480,330), Vector2(1480,370)
]

onready var ball = preload("res://ball.tscn")

func _ready():
	for i in range(11):
		var b = ball.instance()
		b.id = i
		b.name = "ball"+str(i)
		b.set_position(POS[i])
		b.get_node("sprite").set_texture(Balls[i])
		add_child(b)
		
		


extends Area3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotate_y(0.01)
	
	
func _on_body_entered(body: Node3D) -> void:
	$sound.play()  
	$CollisionShape3D.disabled = true  
	hide()
	body.increase_score(10)
	body.counter("diamond")
	
	

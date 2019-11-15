extends RigidBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#    pass


func _on_Platform_body_entered(body):
    print("Platform", body.get_name())
    if body.get_name() == "Player":
        set_physics_process(true)
        print("position:", body.get_translation())
        print("self position:", self.get_translation())
       #move_and_slide(Vector3(0,1,0), Vector3(0,1,0))
        add_force(Vector3(1,10,1), self.get_translation())
        
func _physics_process(delta):
    print(get_translation())    

func _on_Platform_body_shape_entered(body_id, body, body_shape, local_shape):
    print("platform...", body)

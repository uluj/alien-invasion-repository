//@obj_controller step event
//  repearedly creates obj_ball1 for z button hold
if (keyboard_check(ord("Z"))) {
    // Show the object and move it upwards
	
    var _new_ball1 = instance_create_layer(obj_sprite.x, obj_sprite.y, "Instances", obj_ball1);
	obj_ball1.visible =true;
}
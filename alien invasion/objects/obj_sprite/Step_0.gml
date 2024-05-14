/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_right)&&x<=room_width-8){
x+=3;
//sprite_index= spr_sprite_walk;
}
else if (keyboard_check(vk_left)&&x>=8){
x-=3;
//sprite_index= spr_sprite_walk;
}
/*else if (keyboard_check(vk_up)){
y-=3;
//sprite_index= spr_sprite_walk;
}
else if (keyboard_check(vk_down)){
y+=3;
//sprite_index= spr_sprite_walk;
}
else{
//sprite_index= spr_sprite_idle;
}*/
if (keyboard_check_pressed(ord("Z")))  { 
    if (instance_exists(obj_sprite)&&can_attack) { // Check for obj_sprite instance
        var _new_ball1 = instance_create_layer(obj_sprite.x, obj_sprite.y, "Instances", obj_ball1);
        
         can_attack=false;
        alarm[0] = room_speed;
    } else {
        // Handle the case where obj_sprite doesn't exist (optional)
        show_debug_message("Error: obj_sprite instance not found.");
    }
}


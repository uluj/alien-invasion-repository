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



    if (alarm[0]<=5){
        if (keyboard_check_pressed(ord("Z")))  { 
    if (instance_exists(obj_sprite)&&can_attack) { // Check for obj_sprite instance
        var _new_ball1 = instance_create_layer(obj_sprite.x, obj_sprite.y, "Instances", obj_ball1);
        can_attack=true;
         
		 if (30<=_room_speed+_int_to_change<=120){
			 _int_to_change-=5;
			 show_debug_message("int changed");
        alarm[0] = _room_speed+_int_to_change;
		 }
		 else{
			 alarm[0]=_room_speed;
		 }
    } 
}
		
		}
        

    else{
	   if (keyboard_check_pressed(ord("Z")))  { 
    if (instance_exists(obj_sprite)&&can_attack) { // Check for obj_sprite instance
        var _new_ball1 = instance_create_layer(obj_sprite.x, obj_sprite.y, "Instances", obj_ball1);
        can_attack=false;
         show_debug_message("int resetted");
		 _int_to_change=0;
    } 
}
	
        
}




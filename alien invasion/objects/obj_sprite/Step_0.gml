//@description step event of obj_sprite
if (keyboard_check(vk_right)&&x<=room_width-8){
x+=3;
//for different project
//sprite_index= spr_sprite_walk;
}
else if (keyboard_check(vk_left)&&x>=8){
x-=3;
//for different project
//sprite_index= spr_sprite_walk;
}
//for different project
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
		
		// Calculate the pan value based on obj_sprite's position
            var _pan_value = (x - _screen_middle) / _screen_middle;
            _pan_value = clamp(_pan_value, -1, 1);
		
		// Play the laserShoot sound with the calculated pan value
     var _sound_index = audio_play_sound(snd_laser_shoot, 1, false);
            audio_sound_set_track_position(_sound_index, _pan_value); // Set panning
   

		 if (30<=_room_speed+_int_to_change<=120){
			 _int_to_change-=5;
			 
			 show_debug_message("int changed");
        alarm[0] = _room_speed+_int_to_change;
		 }
		 else{
			 alarm[0]=_room_speed+_int_to_change;
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




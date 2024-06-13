// step event of obj_pui
if (keyboard_check_pressed(ord("Z")))  { 
    if (instance_exists(obj_pui)&&can_attack2) { // Check for obj_sprite instance
        var _new_ball1 = instance_create_layer(obj_pui.x, obj_pui.y, "Instances", obj_bui);
      
	  var sound_instance;
sound_instance = audio_play_sound(snd_laser_shoot, 1, false, global.soundgain);

         can_attack2=false;
        alarm[0] = 30;
    } else {
        // Handle the case where obj_sprite doesn't exist (optional)
        show_debug_message("Error: obj_sprite instance not found.");
    }
}
if (keyboard_check_pressed(ord("I")))  { 
   deactivate_loader();
}
// Step Event
#region ui movement
if (keyboard_check_released(vk_right) || keyboard_check_released(ord("D"))) {
    _int++;
    show_debug_message("int value up: " + string(_int));
    if (state != undefined) {
        state();
    }
}

if (keyboard_check_released(vk_left) || keyboard_check_released(ord("A"))) {
    _int--;
    show_debug_message("int value down: " + string(_int));
    if (state != undefined) {
        state();
    }
}

if (_int >= 3) {
    _int = 0;
    if (state != undefined) {
        state();
    }
} else if (_int < 0) {  // Changed from <= to <
    _int = 2;
    if (state != undefined) {
        state();
    }
}
#endregion
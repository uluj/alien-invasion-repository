/// @description Collision event with obj_texthandlerwBox from ball obj_bui

// General debug message to ensure the collision event is triggering
show_debug_message("Collision event triggered.");

// Print the ID of the `other` instance
show_debug_message("Other instance ID: " + string(other.id));

// Change the color of the box object to red
other.image_blend = c_red;

// Check if the 'other' object is one of the global box instances
if (room == rm_menu) {
    if (other.id == global.box1) {
        show_debug_message("Collision with global.box1 detected.");
        global.box1.initializecolor(c_red);
    } else if (other.id == global.box2) {
        show_debug_message("Collision with global.box2 detected.");
        global.box2.initializecolor(c_red);
    } else if (other.id == global.box3) {
        show_debug_message("Collision with global.box3 detected.");
        global.box3.initializecolor(c_red);
	
    } else {
        show_debug_message("Collision with an unidentified object in rm_menu.");
    }
} 

else if (room == rm_menu2_set) {
    show_debug_message("Collision in rm_menu2_set.");
}
else if (room == rm_menu3_sound) {
    show_debug_message("Collision in rm_menu3_sound.");
}
else if (room == rm_menu4_res) {
    show_debug_message("Collision in rm_menu4_res.");
}

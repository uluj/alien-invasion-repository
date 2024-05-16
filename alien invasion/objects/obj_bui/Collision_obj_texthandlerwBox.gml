instance_destroy();
if (room == rm_menu) {
/// @description Collision event with obj_texthandlerwBox

// Change the color of the box object to red
other.image_blend = c_red;

// Debug message to ensure the collision is occurring with the expected object
show_debug_message("Collision with obj_texthandlerwBox detected.");

// Check if the 'other' object is one of the global box instances
if (other == global.box1) {
    show_debug_message("Collision with global.box1 detected.");
    if (variable_instance_exists(global.box1, "text_color")) {
        show_debug_message("text_color variable found in global.box1.");
        global.box1.text_color = c_red;
    } else if(!variable_instance_exists(global.box1, "text_color")) {
        show_debug_message("text_color variable not found in global.box1.");
    }
} else {
    show_debug_message("Other instance is not global.box1.");
}

if (other == global.box2) {
    show_debug_message("Collision with global.box2 detected.");
    if (variable_instance_exists(global.box2, "text_color")) {
        show_debug_message("text_color variable found in global.box2.");
        global.box2.text_color = c_red;
    } else {
        show_debug_message("text_color variable not found in global.box2.");
    }
} else {
    show_debug_message("Other instance is not global.box2.");
}

if (other == global.box3) {
    show_debug_message("Collision with global.box3 detected.");
    if (variable_instance_exists(global.box3, "text_color")) {
        show_debug_message("text_color variable found in global.box3.");
        global.box3.text_color = c_red;
    } else {
        show_debug_message("text_color variable not found in global.box3.");
    }
} else {
    show_debug_message("Other instance is not global.box3.");
}
// Repeat similar checks for other boxes if needed


}
else if (room == rm_menu2_set) {

}
else if (room == rm_menu3_sound) {

}
else if (room == rm_menu4_res) {

}
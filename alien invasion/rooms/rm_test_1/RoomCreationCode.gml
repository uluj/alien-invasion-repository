//@ Room Creation code
// Create obj_controller first
//@ Room Creation Code
show_debug_message("Room Creation Code is executing.");

global._case1=false;
// Enable fullscreen
if (variable_global_exists("fullscreen")) {
    // Check the value of global.fullscreen
    if (global.fullscreen == true) {
        window_set_fullscreen(true);
    } else if (global.fullscreen == false) {
        window_set_fullscreen(false);
    }
} else {
    // Set fullscreen to true if global.fullscreen is not defined
    global.fullscreen = true;
    window_set_fullscreen(true);
}
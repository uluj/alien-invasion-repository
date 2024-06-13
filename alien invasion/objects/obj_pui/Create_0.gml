/// @description create event of obj_pui
_int=0;
if (variable_global_exists("index3")){
	
}else{
	global.index3=0;
}
if (variable_global_exists("index2")){
	
}else{
	global.index2=0;
}
if (variable_global_exists("soundgain"))
{
	
}else{
	global.soundgain=0.25;
}

y = (room_height / 10) * 9;
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

can_attack2 = true;
alarm[0] = -1;
//object create coduyla yer buluyor

//menu spawn
if (room == rm_menu) {
    global.box1 = instance_create_layer(18, box_height, "Instances", obj_texthandlerwBox);
    global.box1.initialize("Start");
    global.box1.initializecolor(c_white);
    show_debug_message("global.box1 created with ID: " + string(global.box1.id));

    global.box2 = instance_create_layer(124, box_height, "Instances", obj_texthandlerwBox);
    global.box2.initialize("Settings");
    global.box2.initializecolor(c_white);
    show_debug_message("global.box2 created with ID: " + string(global.box2.id));

    global.box3 = instance_create_layer(230, box_height, "Instances", obj_texthandlerwBox);
    global.box3.initialize("Exit");
    global.box3.initializecolor(c_white);
    show_debug_message("global.box3 created with ID: " + string(global.box3.id));
}
else if (room == rm_menu2_set) {
    global.box4 = instance_create_layer(18, box_height, "Instances", obj_texthandlerwBox);
    global.box4.initialize("Sound");
	global.box4.initializecolor(c_white);
    global.box5 = instance_create_layer(124, box_height, "Instances", obj_texthandlerwBox);
    global.box5.initialize("Resolution");
	global.box5.initializecolor(c_white);
    global.box6 = instance_create_layer(230, box_height, "Instances", obj_texthandlerwBox);
    global.box6.initialize("Back");
	global.box6.initializecolor(c_white);
}
else if (room == rm_menu3_sound) {
    global.box7 = instance_create_layer(18, box_height, "Instances", obj_texthandlerwBox);
    global.box7.initialize("Music");
	global.box7.initializecolor(c_white);
	//global.box71 global.box72 global.box73 under the globa.box7 to define music value
	/*global.box71 = instance_create_layer(22, 44, "Instances", obj_texthandlerwBox);
	global.box72 = instance_create_layer(30, 44, "Instances", obj_texthandlerwBox);
	global.box73 = instance_create_layer(38, 44, "Instances", obj_texthandlerwBox);*/
	//initialize color
	
	//
    global.box8 = instance_create_layer(124, box_height, "Instances", obj_texthandlerwBox);
    global.box8.initialize("SoundFx");
	global.box8.initializecolor(c_white);
	//global.box81 global.box82 global.box83 under the global.box8 to define soundfx value
	/*global.box81 = instance_create_layer(128, 44, "Instances", obj_texthandlerwBox);
	global.box82 = instance_create_layer(136, 44, "Instances", obj_texthandlerwBox);
	global.box83 = instance_create_layer(144, 44, "Instances", obj_texthandlerwBox);*/
	//initialize color
	
	//
    global.box9 = instance_create_layer(230, box_height, "Instances", obj_texthandlerwBox);
    global.box9.initialize("Back");
	global.box9.initializecolor(c_white);
}
else if (room == rm_menu4_res) {
  /*global.box10 = instance_create_layer(18, 32, "Instances", obj_texthandlerwBox);
    global.box10.initialize("Window\nSize");
	global.box10.initializecolor(c_white);*/
    global.box11 = instance_create_layer(124, box_height, "Instances", obj_texthandlerwBox);
    global.box11.initialize("Fullscreen");
	global.box11.initializecolor(c_white);
    global.box12 = instance_create_layer(230, box_height, "Instances", obj_texthandlerwBox);
    global.box12.initialize("Back");
	global.box12.initializecolor(c_white);
}

// Create Event
_int = 0; // Initialize _int to 0
x=30+offset;
check_keyboard = function() {
    switch (_int) {
        case 0:
            x = 30+offset;
            break;
        case 1:
            x = 136+offset;
            break;
        case 2:
            x = 242+offset;
            break;
    }
}
state = check_keyboard;
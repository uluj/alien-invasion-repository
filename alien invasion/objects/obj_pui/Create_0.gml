/// @description create event of obj_pui

x = room_width / 2;
y = (room_height / 10) * 9;
window_set_fullscreen(true);
can_attack2 = true;
alarm[0] = -1;
//object create coduyla yer buluyor

//menu spawn
if (room == rm_menu) {
    global.box1 = instance_create_layer(18, 32, "Instances", obj_texthandlerwBox);
    global.box1.initialize("Start");
    global.box1.initializecolor(c_white);
    show_debug_message("global.box1 created with ID: " + string(global.box1.id));

    global.box2 = instance_create_layer(124, 32, "Instances", obj_texthandlerwBox);
    global.box2.initialize("Settings");
    global.box2.initializecolor(c_white);
    show_debug_message("global.box2 created with ID: " + string(global.box2.id));

    global.box3 = instance_create_layer(230, 32, "Instances", obj_texthandlerwBox);
    global.box3.initialize("Exit");
    global.box3.initializecolor(c_white);
    show_debug_message("global.box3 created with ID: " + string(global.box3.id));
}
else if (room == rm_menu2_set) {
    global.box4 = instance_create_layer(18, 32, "Instances", obj_texthandlerwBox);
    global.box4.initialize("Sound");
	global.box4.initializecolor(c_white);
    global.box5 = instance_create_layer(124, 32, "Instances", obj_texthandlerwBox);
    global.box5.initialize("Resolution");
	global.box5.initializecolor(c_white);
    global.box6 = instance_create_layer(230, 32, "Instances", obj_texthandlerwBox);
    global.box6.initialize("Back");
	global.box6.initializecolor(c_white);
}
else if (room == rm_menu3_sound) {
    global.box7 = instance_create_layer(18, 32, "Instances", obj_texthandlerwBox);
    global.box7.initialize("Music");
	global.box7.initializecolor(c_white);
    global.box8 = instance_create_layer(124, 32, "Instances", obj_texthandlerwBox);
    global.box8.initialize("Sound_Effects");
	global.box8.initializecolor(c_white);
    global.box9 = instance_create_layer(230, 32, "Instances", obj_texthandlerwBox);
    global.box9.initialize("Back");
	global.box9.initializecolor(c_white);
}
else if (room == rm_menu4_res) {
    global.box10 = instance_create_layer(18, 32, "Instances", obj_texthandlerwBox);
    global.box10.initialize("Window");
	global.box10.initializecolor(c_white);
    global.box11 = instance_create_layer(124, 32, "Instances", obj_texthandlerwBox);
    global.box11.initialize("Fullscreen");
	global.box11.initializecolor(c_white);
    global.box12 = instance_create_layer(230, 32, "Instances", obj_texthandlerwBox);
    global.box12.initialize("Back");
	global.box12.initializecolor(c_white);
}

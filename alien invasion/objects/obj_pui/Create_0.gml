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
    global.box2 = instance_create_layer(124, 32, "Instances", obj_texthandlerwBox);
    global.box2.initialize("Settings");
    global.box3 = instance_create_layer(230, 32, "Instances", obj_texthandlerwBox);
    global.box3.initialize("Exit");
}
else if (room == rm_menu2_set) {
    global.box4 = instance_create_layer(18, 32, "Instances", obj_texthandlerwBox);
    global.box4.initialize("Sound");
    global.box5 = instance_create_layer(124, 32, "Instances", obj_texthandlerwBox);
    global.box5.initialize("Resolution");
    global.box6 = instance_create_layer(230, 32, "Instances", obj_texthandlerwBox);
    global.box6.initialize("Back");
}
else if (room == rm_menu3_sound) {
    global.box7 = instance_create_layer(18, 32, "Instances", obj_texthandlerwBox);
    global.box7.initialize("Music");
    global.box8 = instance_create_layer(124, 32, "Instances", obj_texthandlerwBox);
    global.box8.initialize("Sound_Effects");
    global.box9 = instance_create_layer(230, 32, "Instances", obj_texthandlerwBox);
    global.box9.initialize("Back");
}
else if (room == rm_menu4_res) {
    global.box10 = instance_create_layer(18, 32, "Instances", obj_texthandlerwBox);
    global.box10.initialize("Window");
    global.box11 = instance_create_layer(124, 32, "Instances", obj_texthandlerwBox);
    global.box11.initialize("Fullscreen");
    global.box12 = instance_create_layer(230, 32, "Instances", obj_texthandlerwBox);
    global.box12.initialize("Back");
}

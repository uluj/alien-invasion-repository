/// @description Insert description here
// You can write your code in this editor
x=room_width/2;
y=(room_height/10)*9;
window_set_fullscreen(true);
can_attack2=true;
alarm[0]=-1;
//object create coduyla yer buluyor


//menu spawn
if (room == rm_menu) {
var box1 = instance_create_layer(18, 32, "Instances", obj_texthandlerwBox);
box1.initialize("Start");
var box2 = instance_create_layer(124, 32, "Instances", obj_texthandlerwBox);
box2.initialize("Settings");
var box3 = instance_create_layer(230, 32, "Instances", obj_texthandlerwBox);
box3.initialize("Exit");
}
else if (room == rm_menu2_set) {
var box4 = instance_create_layer(18, 32, "Instances", obj_texthandlerwBox);
box4.initialize("Sound");
var box5 = instance_create_layer(124, 32, "Instances", obj_texthandlerwBox);
box5.initialize("Resolution");
var box6 = instance_create_layer(230, 32, "Instances", obj_texthandlerwBox);
box6.initialize("Back");
}
else if (room == rm_menu3_sound) {
var box7 = instance_create_layer(18, 32, "Instances", obj_texthandlerwBox);
box7.initialize("Music");
var box8 = instance_create_layer(124, 32, "Instances", obj_texthandlerwBox);
box8.initialize("Sound_Effects");
var box9 = instance_create_layer(230, 32, "Instances", obj_texthandlerwBox);
box9.initialize("Back");
}
else if (room == rm_menu4_res) {
var box10 = instance_create_layer(18, 32, "Instances", obj_texthandlerwBox);
box10.initialize("Window");
var box11 = instance_create_layer(124, 32, "Instances", obj_texthandlerwBox);
box11.initialize("Fullscreen");
var box12 = instance_create_layer(230, 32, "Instances", obj_texthandlerwBox);
box12.initialize("Back");
}
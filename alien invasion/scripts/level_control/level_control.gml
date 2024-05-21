// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function mission1(){
	global.mission1= "Mission: Vast Space";
	room_goto(Room3);
}
function mission2(){
	global.mission1= "Mission: First Encounter";
	
	room_goto(Room3);
}
//only for testing
function deactivate_loader(){
	show_debug_message("deactivateloader fired")
	room_goto(rm_test);
	global.loaded=false;
	global.skill=1;
	//instance_destroy(obj_loader);
	//global.loaded= true;
//instance_create_layer(0,0,"Instances",obj_sprite);
//obj_enemy.visible=true;
//obj_barrier.visible=true;
}
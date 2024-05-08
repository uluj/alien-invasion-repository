//obj_enemy collision from obj_ball1

//global._int+=28/3;

if (global.loaded){
global.second-=4.2857142857;

other.id.sprite_index=spr_14;

alarm[1]=60;
global._index++;
global.score+=10;
save_score();
other.id.alarm[2]= 5;
instance_destroy(self);
show_debug_message("index"+string(global._index));
}

if (global._index==14){
	show_debug_message("_index=14");
	event_user(0);
}
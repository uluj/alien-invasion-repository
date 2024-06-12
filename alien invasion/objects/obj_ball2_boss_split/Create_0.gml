/// @description Insert description here
// You can write your code in this editor

//@Obj_ball1 create event
alarm[1]=-1;

state_normal= function(){
y+=2;

if (y > room_height) {
    instance_destroy();
}
}
state= state_normal

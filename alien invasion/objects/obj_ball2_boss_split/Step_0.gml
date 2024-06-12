/// @description Insert description here
// You can write your code in this editor


//@Obj_ball1 step event
if (state!=undefined){
state();
}
else{
show_debug_message("state is undefined");	
}
// obj_ball1 Collision Event with obj_enemy

/*if (place_meeting(x, y, obj_enemy)) {
    var colliding_enemy = instance_place(x, y, obj_enemy);
    if (colliding_enemy != noone) {
        instance_destroy(colliding_enemy.id);
    }
}*/



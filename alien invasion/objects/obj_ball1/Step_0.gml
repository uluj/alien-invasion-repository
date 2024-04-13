/// @description Insert description here
// You can write your code in this editor


//@Obj_ball1 step event
y-=30;
// Destroy the missile if it goes off-screen
if (y < 0) {
    instance_destroy();
}
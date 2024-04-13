/// @description Insert description here
// You can write your code in this editor

if (x<0|| x>room_width||y<0||y>room_height){
	instance_destroy();
}
else{
//apply movement to bullet's position 
x-= speed_x;
y-= speed_y;
}
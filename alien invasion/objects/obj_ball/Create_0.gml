/// @description Insert description here
// You can write your code in this editor
if (x<0|| x>room_width||y<0||y>room_height){
	instance_destroy();
}
else{
//Bullet Speed
bullet_speed=5;

//Calculate vector
vx= x-obj_sprite.x;
vy= y-obj_sprite.y


// calculate vector components
len= sqrt(vx*vx+vy*vy);

//normalize vector components 
if (len!=0){
vx/=len;
vy/=len;



}

//calculatemovement along x and y axes
speed_x= vx*bullet_speed;
speed_y= vy*bullet_speed;}
/////////////@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
image_blend=c_lime;
_case= false;




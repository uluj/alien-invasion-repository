//step event code

if (x >= 308&& _canmove1==true) { // Assuming 28 and 308 are your leftmost and rightmost x boundaries
    y += 16; // Move down one row; 16 is the assumed height of a grid cell
   _int1 = -_int1; // Reverse direction
	_canmove1=false;
}
if (x <= 28&&_canmove1==false)
{
	_int1 = -_int1;
	y+=16;
	_canmove1=true;
}

if(y+16>=room_height)
{
instance_destroy()
global.loaded= true;
instance_create_layer(x,y,layer,obj_sprite)
}
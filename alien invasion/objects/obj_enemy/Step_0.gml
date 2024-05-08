// obj_enemy Step Event

// Check if hitting the horizontal boundaries

// obj_enemy Step Event
if (global.loaded){
// Check for colli
if (x >= 308&& _canmove==true) { // Assuming 28 and 308 are your leftmost and rightmost x boundaries
    y += 16; // Move down one row; 16 is the assumed height of a grid cell
   _int = -_int; // Reverse direction
	_canmove=false;
}
if (x <= 28&&_canmove==false)
{
	_int = -_int;
	y+=16;
	_canmove=true;
}

if (y>room_height-15)
{
	room_goto(Room4)
}


}
if (global.loaded&&b_lock=true){
// Set an alarm to periodically check movement conditions
alarm[0] = room_speed;
alarm[1] = random_range(180, 480); // Fire a bullet within 60-180 steps
alarm[2]= -1;
b_lock=false;
}
game_set_speed(60, gamespeed_fps);

_canmove=true;
b_lock=true;
_canpir = false;
global.second1=60;
image_index=0;
a_lock=false;
// Create event
_int=28/3;
_int1=0;
_int2=0;
alarm[0]=15;
alarm[1]=-1;
alarm[3]=120;
audio_pause_sound(menuselect)
// Define state functions
state_coming1 = function() {
    show_debug_message("I came");
	if(a_lock==false){
	  image_index=1;
	}
	else if(a_lock==true){
      image_index=0;
	}

		
}
state_coming2= function(){}
// Initialize state
state = state_coming1;

state_normal =function(){
	
	
	
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
if (_canpir==false){
image_index=0;	
}
else {
	image_index=1;
}
if (b_lock==true){
// Set an alarm to periodically check movement conditions

alarm[2] = random_range(45, 120); // Fire a bullet within 60-180 steps

b_lock=false;
}

}
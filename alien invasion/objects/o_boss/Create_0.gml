game_set_speed(60, gamespeed_fps);
image_index=0;
// Create event
_int=28/3;
_int1=0;
alarm[0]=15;
audio_pause_sound(menuselect)
// Define state functions
state_coming1 = function() {
    show_debug_message("I came");
		

	
	
	
	if (_int1==4)
	{
		state=state_normal
	}
	
}
state_coming2= function(){}
// Initialize state
state = state_coming1;

state_normal =function(){
	
	show_debug_message("State is state_normal")
	image_index=0;
}
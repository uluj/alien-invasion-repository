if (variable_global_exists("soundgain2"))
{
}else{
	global.soundgain2=0.25;
}

global.music_instance= audio_play_sound(menuselect,0,true,global.soundgain2)
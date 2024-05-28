/// @description Collision event with obj_texthandlerwBox from ball obj_bui

// General debug message to ensure the collision event is triggering
show_debug_message("Collision event triggered.");

// Print the ID of the `other` instance
show_debug_message("Other instance ID: " + string(other.id));

// Change the color of the box object to red


// Check if the 'other' object is one of the global box instances
if (room == rm_menu) {
    if (other.id == global.box1) {
        show_debug_message("Collision with global.box1 detected.");
        global.box1.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=1;
		other.image_blend = c_red;
		instance_destroy(self)
    } else if (other.id == global.box2) {
        show_debug_message("Collision with global.box2 detected.");
        global.box2.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		other.image_blend = c_red;
		instance_destroy(self)
		global._whichboxcheck=2;
    } else if (other.id == global.box3) {
        show_debug_message("Collision with global.box3 detected.");
        global.box3.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=3;
		other.image_blend = c_red;
	instance_destroy(self)
    } else {
        show_debug_message("Collision with an unidentified object in rm_menu.");
    }
} 

else if (room == rm_menu2_set) {
    show_debug_message("Collision in rm_menu2_set.");
	 if (other.id == global.box4) {
        
        global.box4.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=4;
		other.image_blend = c_red;
		instance_destroy(self)
    } else if (other.id == global.box5) {
        
        global.box5.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=5;
		other.image_blend = c_red;
		instance_destroy(self)
    } else if (other.id == global.box6) {
       
        global.box6.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=6;
		other.image_blend = c_red;
		instance_destroy(self)
	
    }
        
    
}
else if (room == rm_menu3_sound) {
    show_debug_message("Collision in rm_menu3_sound.");
	 if (other.id == global.box7) {
        
       // global.box7.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=7;
		
		global.index3++;
		if (global.index3==1){
			global.soundgain2=0.50;
			obj_s2.image_blend=c_red;
			audio_sound_gain(global.music_instance,0.5,0);
			
		}
		else if (global.index3==2){
			global.soundgain2=1;
			obj_s3.image_blend=c_red;
			audio_sound_gain(global.music_instance,1,0);
		}
		else{
			global.index3=0;
			global.soundgain2=0.25;
			obj_s2.image_blend=c_white;
			obj_s3.image_blend=c_white;
			audio_sound_gain(global.music_instance,0.25,0);
			
		}
		//other.image_blend = c_red;
		instance_destroy(self)
    } else if (other.id == global.box8) {
        
       // global.box8.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=8;
		
		global.index2++;
		if (global.index2==1){
			global.soundgain=0.50;
			obj_s5.image_blend=c_red;
			
		}
		else if (global.index2==2){
			global.soundgain=1;
			obj_s6.image_blend=c_red;
		}
		else{
			global.index2=0;
			global.soundgain=0.25;
			obj_s5.image_blend=c_white;
			obj_s6.image_blend=c_white;
			
		}
		instance_destroy(self)
    } else if (other.id == global.box9) {
       
        global.box9.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=9;
		other.image_blend = c_red;
		instance_destroy(self)
	
    }
}
else if (room == rm_menu4_res) {
    show_debug_message("Collision in rm_menu4_res.");
	
     if (other.id == global.box11) {
        
       // global.box11.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=11;
		//other.image_blend = c_red;
		if (global.fullscreen){
			
				obj_s11.image_blend=c_white;
			obj_s10.image_blend=c_red;
			global.fullscreen=false;
			window_set_fullscreen(false);
		}
		else{
		
			obj_s11.image_blend=c_red;
			obj_s10.image_blend=c_white;
			global.fullscreen=true;
			window_set_fullscreen(true);
			
		}
		instance_destroy(self)
    } else if (other.id == global.box12) {
       
        global.box12.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=12;
		other.image_blend = c_red;
		instance_destroy(self)
	
    }
}

/// @description Collision event with obj_texthandlerwBox from ball obj_bui

// General debug message to ensure the collision event is triggering
show_debug_message("Collision event triggered.");

// Print the ID of the `other` instance
show_debug_message("Other instance ID: " + string(other.id));

// Change the color of the box object to red
other.image_blend = c_red;

// Check if the 'other' object is one of the global box instances
if (room == rm_menu) {
    if (other.id == global.box1) {
        show_debug_message("Collision with global.box1 detected.");
        global.box1.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=1;
    } else if (other.id == global.box2) {
        show_debug_message("Collision with global.box2 detected.");
        global.box2.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=2;
    } else if (other.id == global.box3) {
        show_debug_message("Collision with global.box3 detected.");
        global.box3.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=3;
	
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
    } else if (other.id == global.box5) {
        
        global.box5.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=5;
    } else if (other.id == global.box6) {
       
        global.box6.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=6;
	
    }
        
    
}
else if (room == rm_menu3_sound) {
    show_debug_message("Collision in rm_menu3_sound.");
	 if (other.id == global.box7) {
        
        global.box7.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=7;
    } else if (other.id == global.box8) {
        
        global.box8.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=8;
    } else if (other.id == global.box9) {
       
        global.box9.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=9;
	
    }
}
else if (room == rm_menu4_res) {
    show_debug_message("Collision in rm_menu4_res.");
	if (other.id == global.box10) {
        
        global.box10.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=10;
    } else if (other.id == global.box11) {
        
        global.box11.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=11;
    } else if (other.id == global.box12) {
       
        global.box12.initializecolor(c_red);
		obj_texthandlerwBox.alarm[0]=5;
		global._whichboxcheck=12;
	
    }
}

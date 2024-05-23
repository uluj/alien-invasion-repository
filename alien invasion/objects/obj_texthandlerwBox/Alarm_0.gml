/// @description Insert description here
// You can write your code in this editor
switch (global._whichboxcheck){
	//main menu
case 1:
show_debug_message("case 1 activated")
room_goto(rm_test)
break;
case 2: 
show_debug_message("case 2 activated")
room_goto(rm_menu2_set)
break;
case 3:
show_debug_message("case 3 activated")
game_end()
break;
//settings 
case 4:
room_goto(rm_menu3_sound)
break;
case 5:
room_goto(rm_menu4_res)
break;
case 6:
room_goto(rm_menu)
break;
// sound
case 7:

break;
case 8:

break;
case 9:
room_goto(rm_menu2_set)
break;
case 10:

break;
case 11:

break;
case 12:
room_goto(rm_menu2_set);
break;
}
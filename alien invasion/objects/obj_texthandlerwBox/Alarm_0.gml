/// @description Insert description here
// You can write your code in this editor
switch (global._whichboxcheck){
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
}
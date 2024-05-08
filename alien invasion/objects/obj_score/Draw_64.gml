/// @description Insert description here
// You can write your code in this editor
if(global.loaded){
draw_set_font(Font1); // Replace 'your_font_name' with the name you gave your font
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/4,room_height/12,"Score");
draw_text(room_width / 4, room_height /8, global.score); 
}
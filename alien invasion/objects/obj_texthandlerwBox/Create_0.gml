///@description create event of obj_texthandlerwBox
// Initialize text properties


my_font = Font1;  // Assuming fnt_Default is your default font
text_color = c_white;
image_xscale = 4;  // Scale horizontally by 3
image_yscale = 4;  // Scale vertically by 3
  // Default x position
  // Default y position
//text changes refer to obj_pui
function initialize(Default)
{
	text= Default;
}
function initializecolor(c_white){
	text_color = c_white;
}
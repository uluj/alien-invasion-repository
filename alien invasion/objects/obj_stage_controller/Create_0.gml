/// @description Insert description here
// You can write your code in this editor
//@obj_stage_controller create event

//global stage variable
global._stage=1;
//ensure that child objects run after obj_stage_controller
instance_create_layer(x,y,layer,obj_gridlist)
instance_create_layer(x,y,layer,obj_chr_stgcontroller)


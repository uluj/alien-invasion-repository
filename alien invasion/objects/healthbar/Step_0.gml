/// @description Insert description here
// You can write your code in this editor
if(global.hit1!=undefined){
image_index=global.hit1
}
if(image_index>=32){
instance_destroy()
instance_destroy(o_boss)
//room_goto() goes to winning room
}
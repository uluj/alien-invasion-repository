/// @description Insert description here
// You can write your code in this editor
if (a_lock){
	if(global.hit!=undefined&&global.hit1!=undefined)
	{
		global.hit++;
		global.hit1++;
		}
	a_lock=false;
}
instance_destroy(self)
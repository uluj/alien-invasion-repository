
//alarm event
_int2++
	switch (a_lock){
		case true:
		a_lock=false
		break;
		case false:
		a_lock=true;
		break;
		
	}
	
	
	if (_int2<=8){
	alarm[0]=15
	x+=_int
	}
	else
	{
		state=state_normal
		alarm[1]=60;
		alarm[0]=-1;
	}
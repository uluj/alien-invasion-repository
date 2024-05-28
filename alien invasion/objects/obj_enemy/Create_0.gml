// obj_enemy Create Event
 _canpir = false;
_canmove=true;
  room_speed=60;
  global.second=60;
_int=28/3;
b_lock=true;

// Clamp x and y positions to grid boundaries
x = clamp(x, 28, 308);
y = clamp(y, 64, 320);

// Set initial horizontal speed based on initial position
// obj_enemy Create Event


// Debug message to confirm the clamping and initial settings
show_debug_message("Enemy clamped to position: x=" + string(x) + ", y=" + string(y));


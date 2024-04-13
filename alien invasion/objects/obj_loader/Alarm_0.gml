// Timer Event (obj_loader)
// This event will fire every step (can be adjusted for speed)
if (alarm[0] == -1) {
  set_next_position();
}

// Function to set the next position
function set_next_position() {
  // Check if all positions have been visited
  if (index >= ds_list_size(global._grid)) {
    show_debug_message("Loop completed.");
    return;  // Exit the function if finished
  }

  // Get the value from the ds_list
  var _value = ds_list_find_value(global._grid, index);

  // Retrieve coordinates for the value
  var _coordinates = global._grid_coordinates[? _value];

  // Check if coordinates are found
  if (_coordinates == undefined) {
    show_debug_message("ERROR: Coordinates not found for value: " + _value);
    return;  // Exit the function if error
  }

  // Retrieve x and y coordinates
  var _x = ds_map_find_value(_coordinates, "x");
  var _y = ds_map_find_value(_coordinates, "y");

  // Move obj_loader to the retrieved coordinates smoothly
  // (adjust speed as needed)
  x = move_towards(x, _x, 2);  // Move 2 pixels per step towards target
  y = move_towards(y, _y, 2);

  // Increment index for the next position
  index += 1;

  // Restart the timer (optional, adjust for desired movement duration)
  alarm[0] = room_speed;
}
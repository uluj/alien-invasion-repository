//create event for obj_loader 
// Retrieve the coordinates for 'a1' from _grid_coordinates
var _coordinates = global._grid_coordinates[? "a1"];
if (_coordinates != undefined) {
    // Retrieve x and y coordinates
    var _x1 = ds_map_find_value(_coordinates, "x");
    var _y1 = ds_map_find_value(_coordinates, "y");
    
    // Set obj_gridlist's position to the retrieved coordinates
    x = _x1;
    y = _y1;
} else {
    show_debug_message("ERROR: Coordinates not found for value: a1");
}

// Create Event


// Create Event for obj_loader
index = 0; // Initialize index to 0
visit_duration = room_speed; // Duration for each grid position visit (1 second)

// Start the process by setting the initial position
set_next_position();

// Timer Event
// This event will fire every 60 steps (1 second)
if (alarm[0] == -1) {
    set_next_position();}
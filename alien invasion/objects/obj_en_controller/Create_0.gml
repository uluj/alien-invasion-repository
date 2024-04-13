// Initialize random number generator
randomize();

// Array to store randomly selected indices
var _random_indices = ds_list_create();

// Generate 11 unique random indices
repeat (11) {
    var _current_random_index;
    do {
        _current_random_index = irandom(ds_list_size(global._grid) - 1);
    } until (!ds_list_find_index(_random_indices, _current_random_index));
    
    // Store the random index
    ds_list_add(_random_indices, _current_random_index);
}

// Set obj_enemy locations using the randomly selected coordinates
for (var _i = 0; _i < ds_list_size(_random_indices); _i++) {
    var _random_index = ds_list_find_value(_random_indices, _i);
    var _value = ds_list_find_value(global._grid, _random_index);
    
    // Retrieve x and y coordinates from _grid_coordinates
    var _coordinates = global._grid_coordinates[? _value];
    var _x_coordinate = ds_map_find_value(_coordinates, "x");
    var _y_coordinate = ds_map_find_value(_coordinates, "y");
	
    /*// Randomly determine rotation direction (+x or -x)
    var _random_rotation = irandom_range(0, 1);*/
    
    // Create obj_enemy instance at x, y position
    var _enemy_instance = instance_create_layer(_x_coordinate, _y_coordinate, layer, obj_enemy);
	
	// Loop through all instances of obj_enemy
with (obj_enemy) {
    // Check if near the right edge of the room
    if (x >= room_width /2) {
        image_angle = 90; // Set rotation to -90 degrees
    }
    // Check if near the left edge of the room
    else if (x <=room_width/2) {
        image_angle = -90; // Set rotation to 90 degrees
    }

}
obj_enemy.visible= false;
	
	
	/*// Set rotation based on random_rotation
    if (_random_rotation == 0) {
        // If _random_rotation is 0, set rotation to +x
        _enemy_instance.image_angle = 90; // Set rotation to 45 degrees for +x
    } else {
        // If _random_rotation is 1, set rotation to -x
        _enemy_instance.image_angle = -90; // Set rotation to -45 degrees for -x
		
    }*/
	// Check if rotation angle is 90 or -90, and set tag accordingly
    if (_enemy_instance.image_angle == 90) {
        _enemy_instance.tag = "righte" // Set tag for instances with rotation 90 or -90
    } else {
        _enemy_instance.tag = "lefte"; // Clear tag for other instances
    }
}
instance_create_layer(x,y,layer,obj_loader)







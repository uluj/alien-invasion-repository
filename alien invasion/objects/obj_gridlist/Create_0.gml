
//@obj_gridlist create event

//create ds_list called _grid
global._grid = ds_list_create();


// Create ds_map to store coordinates for each grid value
global._grid_coordinates = ds_map_create();

// Initialize x and y coordinates
var _x = 28; // Initial x coordinate
var _y = 64; // Initial y coordinate

// Add values to the _grid ds_list and assign x,y coordinates
for (var _letter = ord("a"); _letter <= ord("q"); _letter++) {
    for (var _number = 1; _number <= 11; _number++) {
        var _valuetoadd = chr(_letter) + string(_number);
        ds_list_add(global._grid, _valuetoadd); // Add value to global _grid
        
        // Store coordinates for the grid value in the ds_map
        var _coordinates = ds_map_create();
        ds_map_add(_coordinates, "x", _x); // Add x coordinate
        ds_map_add(_coordinates, "y", _y); // Add y coordinate
        global._grid_coordinates[? _valuetoadd] = _coordinates;
        
        // Update x coordinate for the next grid value
        _x += 28;
    }
    
    // Update y coordinate for the next row of grid values
    _y += 16;
    
    // Reset x coordinate for the next row to 28
    _x = 28;
}

// Output the values of ds_list called _grid
for (var _i = 0; _i < ds_list_size(global._grid); _i++) {
    var _value = ds_list_find_value(global._grid, _i);
    var _coordinates = global._grid_coordinates[? _value];
    
    // Check if coordinates are found for the value
    if (_coordinates == undefined) {
        show_debug_message("ERROR: Coordinates not found for value: " + _value);
    } else {
        // Retrieve x and y coordinates
        var _x1 = ds_map_find_value(_coordinates, "x");
        var _y1 = ds_map_find_value(_coordinates, "y");
        
        // Check if coordinates are valid
        if (!is_real(_x1) || !is_real(_y1)) {
            show_debug_message("ERROR: Invalid coordinates for value: " + _value);
        } else {
            // Output value and coordinates
            show_debug_message("Value: " + _value + " | Coordinates: (" + string(_x1) + ", " + string(_y1) + ")");
        }
    }
}





// Pick random value from _grid ds_list
var _randomindex = irandom(ds_list_size(global._grid) - 1);
global._randomvalue = ds_list_find_value(global._grid, _randomindex);

// Retrieve x and y coordinates for the random value
var _coordinates = global._grid_coordinates[? global._randomvalue];
var _random_x = ds_map_find_value(_coordinates, "x");
var _random_y = ds_map_find_value(_coordinates, "y");

// Show random _grid value and its coordinates as debug message
show_debug_message("Randomly picked value: " + global._randomvalue);
show_debug_message("Coordinates (x, y): (" + string(_random_x) + ", " + string(_random_y) + ")");


//ensure that global variables set before other object create
instance_create_layer(x,y,layer,obj_en_controller)
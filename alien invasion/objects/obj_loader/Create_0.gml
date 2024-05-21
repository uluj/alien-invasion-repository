x = 28 ;
y=64;
alarm[0] = room_speed;
_int1=16;
_canmove1=true;
//create instances of obj_enemy with for loop and add those values of room and id to destroy
global.instance_list_obj_enemy = ds_list_create();

// Define the X and Y starting points and increments
var x_start = 84;
var y_start = 64;
var x_increment = 28;
var y_increment = 48;
if(global.skill==1){
var rows = 2;
var columns = 7;
}
// Initialize coordinates array
var coordinates = array_create(rows * columns);

// Populate the array using nested for loops
var index = 0;
for (var _y = 0; _y < rows; _y++) {
    for (var _x = 0; _x < columns; _x++) { // Correct the variable name from x to _x
        coordinates[index] = [x_start + _x * x_increment, y_start + _y * y_increment];
        index++;
    }
}

// Debug: Print coordinates to the console to verify
for (var i = 0; i < array_length(coordinates); i++) {
    show_debug_message("Coordinate " + string(i) + ": " + string(coordinates[i][0]) + ", " + string(coordinates[i][1]));
}

if (!variable_global_exists("instance_list_obj_enemy")) {
    global.instance_list_obj_enemy = ds_list_create();
}

// Iterate over the coordinates array and create instances
for (var i = 0; i < array_length(coordinates); i++) {
    var x_pos = coordinates[i][0];
    var y_pos = coordinates[i][1];
    var inst = instance_create_layer(x_pos, y_pos, "Instances", obj_enemy);
    
    // Log each coordinate and instance creation
    show_debug_message("Creating instance of obj_enemy at X: " + string(x_pos) + " Y: " + string(y_pos) + " - ID: " + string(inst) + ", Room: " + string(room));
    
    // Store instance information in a map
    var info = ds_map_create();
    ds_map_add(info, "id", inst);
    ds_map_add(info, "room", room);
    ds_list_add(global.instance_list_obj_enemy, info);
}


/// @description Insert description here
// You can write your code in this editor
// Create a bullet (assuming you have an obj_bullet)

instance_create_layer(x, y, "Instances", obj_ball2); 

// Set the bullet's direction, speed, etc., if needed

// Reset the alarm for the next random shot
alarm[1] = random_range(180, 480); 

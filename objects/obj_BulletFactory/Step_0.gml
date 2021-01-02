/// @description Insert description here
// You can write your code in this editor
// Spawn a bullet every spawn_time seconds
if !global.is_dead {
	if (current_time > spawn_time) {
		show_help = false;
		// Update next spawn time
		spawn_time = get_next_spawn_time();
	
		// Get (x, y) position of new bullet
		spawn_point = get_random_spawn_point();
	
		// Create bullet
		instance_create_layer(spawn_point[0], spawn_point[1], "Instances", obj_bullet);
	}
}
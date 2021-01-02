/// @description Insert description here
// You can write your code in this editor
function get_next_spawn_time() {
	multiplier = 0;
	if (global.bullets_dodged < 40) {
		multiplier = min(4, global.bullets_dodged / 10);
	} else {
		multiplier = 4 + min(3, (global.bullets_dodged - 40) / 25);
	}
	
	spawn_speed = 1 - 0.1 * multiplier; // seconds
	return current_time + (spawn_speed * 1000);
}

spawn_time = 0;
show_help = true;

function get_random_spawn_point() {
	// pick a bullet direction
	spawn_point = choose("left", "top", "right")
	switch(spawn_point) {
		case "left":
			x_pos = 14;
			y_pos = irandom_range(14, 191);
			break;
		case "right":
			x_pos = 339;
			y_pos = irandom_range(14, 191);
			break;
		case "top":
			y_pos = 14;
			x_pos = irandom_range(14, 345);
			break;
	}
	return [x_pos, y_pos];
}


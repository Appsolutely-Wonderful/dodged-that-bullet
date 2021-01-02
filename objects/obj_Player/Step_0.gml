/// @description Handle keyboard movement
// You can write your code in this editor
// Handle left/right movement
if (!global.is_dead) {
	if keyboard_check(vk_left)
	{
		next_x = x - global.player_speed;
		while (place_meeting(next_x, y, obj_verticalWall))
		{
			next_x += 1;
		}
		x = next_x;
	}
	if keyboard_check(vk_right)
	{
		next_x = x + global.player_speed;
		while (place_meeting(next_x, y, obj_verticalWall))
		{
			next_x -= 1;
		}
		x = next_x;
	}
}

// Handle falling


// Handle jumping and falling
if (jumping)
{
	y -= jump_spd;
	jump_spd -= jump_gravity;
	if (at_jump_target())
	{
		// jumping = false;
	}
}
else if !place_meeting(x, y+1, obj_horizontalWall)
{
	y = y + jump_spd;
	jump_spd += jump_gravity;
}

//if (place_meeting(x, y, obj_bullet)) {
//	global.is_dead = true;
//}

check_max_y_position();
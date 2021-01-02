/// @description Insert description here
// You can write your code in this editor
floor_y = 181;
y = floor_y;
jump_gravity = 0.25;
jump_spd = jump_gravity;
jump_height = 50;
jump_init_spd = 5;
jump_target = floor_y - jump_height;

jumping = false;
global.is_dead = false;

object_set_sprite(obj_Player, sprite_PlayerAttack);

check_max_y_position = function () {
	while (place_meeting(x, y, obj_horizontalWall))
	{
		y = ceil(y);
		y -= 1;
	}
	
	if (y >= 200) {
		y = floor_y;
	}
}

at_jump_target = function () {
	return y <= jump_target;
}
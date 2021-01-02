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
	
	if (y >= floor_y) {
		jumping = false;
	}
}

at_jump_target = function () {
	return y <= jump_target;
}

// Check if player object is using the "Attack" sprite
is_attacking = function () {
	return sprite_index == sprite_PlayerAttack;
}

play_sword_sound = function () {
	var snd = audio_play_sound(snd_sword, 10, 0);
	audio_sound_gain(snd, 0.40, 0);
}

play_jump_sound = function () {
	var snd = audio_play_sound(snd_jump, 10, 0);
	audio_sound_gain(snd, 0.20, 0);
}

// DEBUG
if (room == debug_room) {
	bullet_pos = "";
}
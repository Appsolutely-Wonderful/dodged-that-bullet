/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_shoot, 10, false);
//target_x = get_screen_center_x();
//target_y = get_screen_center_y();
target_x = obj_Player.x;
target_y = obj_Player.y;
debug = false;
image_angle = point_direction(x, y, target_x, target_y);
if place_meeting(x, y, obj_horizontalWall) {
	debug = true;
}

if place_meeting(x, y, obj_verticalWall) {
	debug = true;
}

if !debug {
	move_towards_point(target_x, target_y, 1);
}
bullet_hit_wall = function () {
	if (!debug) {
		if !global.is_dead {
			global.bullets_dodged += 1;
		}
		instance_destroy();
	}
}

bullet_hit_player = function () {
	instance_destroy();
}
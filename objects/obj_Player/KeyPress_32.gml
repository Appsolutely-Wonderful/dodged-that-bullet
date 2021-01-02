/// @description Insert description here
// You can write your code in this editor
if (!global.is_dead) {
	if (!jumping) {
		play_jump_sound();
		jumping = true;
		jump_spd = jump_init_spd;
	}
} else {
	global.restart_game();
}
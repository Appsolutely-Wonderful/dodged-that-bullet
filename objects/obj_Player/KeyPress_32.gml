/// @description Insert description here
// You can write your code in this editor
if (!global.is_dead) {
	if (!jumping) {
		audio_play_sound(snd_jump, 10, 0);
		jumping = true;
		jump_spd = jump_init_spd;
	}
} else {
	global.restart_game();
}
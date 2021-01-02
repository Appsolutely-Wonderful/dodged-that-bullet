/// @description Insert description here
// You can write your code in this editor
if (global.is_dead) {
	if (global.bullets_dodged > global.high_score) {
		global.high_score = global.bullets_dodged;
	}
}
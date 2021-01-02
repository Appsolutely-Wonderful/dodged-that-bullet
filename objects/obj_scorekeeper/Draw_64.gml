/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_yellow);
draw_set_swf_aa_level(1);
draw_text_transformed(16, 16, "Bullets Dodged:", 0.5, 0.5, 0);
draw_set_colour(c_white);
var _str = string(global.bullets_dodged);
draw_text_transformed(84, 16, _str, 0.5, 0.5, 0);
if (global.high_score != 0) {
	draw_set_halign(fa_center);
	draw_text_transformed(get_screen_center_x(), 16, "High Score: " + string(global.high_score), 0.5, 0.5, 0);
}
/// @description Insert description here
// You can write your code in this editor

// player_position = "Player at (" + string(x) + ", " + string(y) + ")";
// draw_text_transformed(16, 48, player_position, 0.5, 0.5, 0);

// screen_center_x_y = "screen center: (" + string(get_screen_center_x()) + ", " + string(get_screen_center_y()) + ")"
// draw_text(x, y - 40, string(room_width));
if (global.is_dead) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text_transformed(get_screen_center_x(), get_screen_center_y(), "You Got SHOT", 0.5, 0.5, 0);
	draw_text_transformed(get_screen_center_x(), get_screen_center_y() + 16, "Press Space to start over", 0.5, 0.5, 0);
}
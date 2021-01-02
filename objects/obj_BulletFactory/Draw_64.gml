/// @description Insert description here
// You can write your code in this editor
if (show_help) {
	time_remaining = (spawn_time - current_time) / 1000
	start_time = string(ceil(time_remaining));
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text_transformed(get_screen_center_x(), get_screen_center_y() - 12, "Use arrow keys to move", 0.5, 0.5, 0);
	draw_text_transformed(get_screen_center_x(), get_screen_center_y(), "Jump with spacebar", 0.5, 0.5, 0);
	draw_text_transformed(get_screen_center_x(), get_screen_center_y() + 12, "Swing sword with CTRL", 0.5, 0.5, 0);
	draw_text_transformed(get_screen_center_x(), get_screen_center_y() + 24, "Round starts in " + start_time, 0.5, 0.5, 0);
}
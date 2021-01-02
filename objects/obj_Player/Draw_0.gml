/// @description Insert description here
// You can write your code in this editor
draw_self();

// DEBUG ONLY
if (room == debug_room) {
	if (image_xscale == 1) {
		draw_sprite(sprite_verticalLine, 0, x - 4, y);
	} else if (image_xscale == -1) {
		draw_sprite(sprite_verticalLine, 0, x + 4, y);
	}
}
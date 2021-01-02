/// @description Insert description here
// You can write your code in this editor

// This is based on the sprite. If the sprite changes
// collision check here will need to change.
did_hit_sword = function () {
	return other.x < (x - 4)
}

player_got_hit = function () {
	global.is_dead = true;
	audio_play_sound(snd_hurt, 10, 0);
}

if (is_attacking()) {
	if !did_hit_sword() {
		player_got_hit();
	} else {
		global.bullets_dodged += 1;
		// TODO: Add sword hit sound effect
	}
} else {
	player_got_hit();
}

// DEBUG ONLY
if (room == debug_room) {
	if (is_attacking()) {
		if (other.x < (x - 4)) {
			bullet_pos = "Hit sword";
		} else {
			bullet_pos = "Hit Player";
		}
	} else {
		bullet_pos = "Hit Player";
	}
}
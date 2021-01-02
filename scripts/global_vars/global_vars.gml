// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.bullets_dodged = 0;
global.player_speed = 2;

global.restart_game = function () {
	global.bullets_dodged = 0;
	global.is_dead = false;
}

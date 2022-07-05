/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player)) {
	if (position_meeting(x, y, obj_player)) {
		if (global.health > 0 && global.health < 250) {
			global.health += random_range(0, 20);
			if (global.health >= 250) {
				global.health = 250;
			}
			audio_play_sound(snd_healthpack, 10, false);
			instance_destroy();
		}
	}
}
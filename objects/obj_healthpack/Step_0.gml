/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player) && position_meeting(x, y, obj_player)) {
	if (global.health > 0 && global.health < global.maxhealth) {
		global.health += round(random_range(0, 20));
		
		if (global.health >= global.maxhealth) {
			global.health = global.maxhealth;
		}
		
		audio_play_sound(snd_healthpack, 10, false);
		instance_destroy();
	}
}
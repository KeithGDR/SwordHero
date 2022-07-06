/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player)) {
	if (position_meeting(x, y, obj_player)) {
		instance_destroy(obj_enemy);
		if (instance_exists(obj_boss)) {
			global.bosshealth -= 100;
		}
		instance_destroy();
		global.score += 50;
		audio_play_sound(snd_emp, 10, false);
		audio_sound_gain(snd_emp, 0.7, 5000);
	}
}
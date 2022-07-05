/// @description Insert description here
// You can write your code in this editor

if (position_meeting(x, y, obj_enemy)) {
	enemy = instance_nearest(x, y, obj_enemy);
	instance_destroy(enemy, true);
	global.score++;
}
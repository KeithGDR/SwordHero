/// @description Insert description here
// You can write your code in this editor

if (position_meeting(x, y, obj_enemy)) {
	enemy = instance_nearest(x, y, obj_enemy);
	instance_destroy(enemy, true);
	global.score += 2;
}

if (position_meeting(x, y, obj_tank)) {
	enemy = instance_nearest(x, y, obj_tank);
	instance_destroy(enemy, true);
	global.score += 20;
}

if (position_meeting(x, y, obj_bomba)) {
	enemy = instance_nearest(x, y, obj_bomba);
	instance_destroy(enemy, true);
	global.score += 50;
}

var time = unix_timestamp();

if (position_meeting(x, y, obj_boss) && global.bosslastdamagetaken < time) {
	global.bosslastdamagetaken = time + 2;
	global.bosshealth -= 50;
	global.score += 50;
}
/// @description Insert description here
// You can write your code in this editor

var collided = instance_nearest(x, y, obj_enemy);

if (!instance_exists(collided)) {
	return;
}

if (point_distance(x, y, collided.x, collided.y) < 50)
{
	instance_destroy(collided, true);
	global.score++;
}

collided = instance_nearest(x, y, obj_tank);

if (!instance_exists(collided)) {
	return;
}

if (point_distance(x, y, collided.x, collided.y) < 50)
{
	instance_destroy(collided, true);
	global.score++;
}

collided = instance_nearest(x, y, obj_bomba);

if (!instance_exists(collided)) {
	return;
}

if (point_distance(x, y, collided.x, collided.y) < 50)
{
	instance_destroy(collided, true);
	global.score++;
}

collided = instance_nearest(x, y, obj_boss);

if (!instance_exists(collided)) {
	return;
}

var time = unix_timestamp();

if (point_distance(x, y, collided.x, collided.y) < 100 && global.bosslastdamagetaken < time)
{
	global.bosslastdamagetaken = time + 2;
	global.bosshealth -= 100;
	global.score += 50;
	
	var time = unix_timestamp();
	if (global.hitsoundcooldown < time) {
		global.hitsoundcooldown = time + 0.5;
		audio_play_sound(snd_hit, 10, false);
	}
}
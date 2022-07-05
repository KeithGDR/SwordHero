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
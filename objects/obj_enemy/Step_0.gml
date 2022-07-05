/// @description Insert description here
// You can write your code in this editor

if (global.gameover) {
	return;
}

if (global.paused) {
	speed = 0;
	return;	
}

if (instance_exists(obj_player)) {
	move_towards_point(obj_player.x, obj_player.y, 4);
	image_angle = point_direction(x, y, obj_player.x, obj_player.y);
	if (position_meeting(x, y, obj_player)) {
		if (global.health > 0) {
			global.health--;
		}
	}
}
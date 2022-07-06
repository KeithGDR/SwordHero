/// @description Insert description here
// You can write your code in this editor

if (global.gameover) {
	return;
}

if (global.paused) {
	speed = 0;
	return;	
}

if (global.winner) {
	speed = 0;
	return;	
}

image_angle += 2;

if (instance_exists(obj_player) && position_meeting(x, y, obj_player) && speed < 1) {
	if (!global.godmode && global.health > 0) {
		global.health -= 50;
	}
}

if (global.bosshealth <= 0) {
	global.winner = true;
}
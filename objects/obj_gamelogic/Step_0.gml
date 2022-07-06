/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_escape) && alarm[0] < 1 && !global.winner && !global.gameover) {
	global.paused = !global.paused;
	alarm[0] = room_speed * 0.5;
}

if (room == level_1 && global.score >= 500) {
	room_goto(level_2);	
} else if (room == level_2 && global.score >= 1000) {
	room_goto(level_3);	
} else if (room == level_3 && global.score >= 1000) {
	room_goto(final_level);	
}
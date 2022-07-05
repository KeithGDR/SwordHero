/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_escape) && alarm[0] < 1) {
	global.paused = !global.paused;
	alarm[0] = room_speed * 0.5;
}
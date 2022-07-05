/// @description Insert description here
// You can write your code in this editor

if (global.gameover) {
	if (keyboard_check(vk_space)) {
		room_restart();
	}
	if (keyboard_check(vk_escape)) {
		room_goto(mainmenu);
	}
	
	return;
}

if (global.paused) {
	return;	
}

image_angle = point_direction(x, y, mouse_x, mouse_y);

if (keyboard_check(vk_left)) {
    x = x - 2;
}
if (keyboard_check(vk_right)) {
    x = x + 2;
}
if (keyboard_check(vk_up)) {
    y = y - 2;
}
if (keyboard_check(vk_down)) {
    y = y + 2;
}

if (keyboard_check(ord("A"))) {
    x = x - 2;
}
if (keyboard_check(ord("D"))) {
    x = x + 2;
}
if (keyboard_check(ord("W"))) {
    y = y - 2;
}
if (keyboard_check(ord("S"))) {
    y = y + 2;
}

if (mouse_check_button_pressed(mb_left)) {
	var delta_x = 45;
	var delta_y = 0;
	var angle = point_direction(0, 0, delta_x, delta_y);
	var distance = point_distance(0, 0, delta_x, delta_y);

	var xpos = x + lengthdir_x(distance, image_angle + angle);
	var ypos = y + lengthdir_y(distance, image_angle + angle);
	var obj2 = instance_create_layer(xpos, ypos, "Player", obj_slice);
	obj2.image_angle = image_angle;
	
	audio_play_sound(snd_slice, 10, false);
	alarm[0] = room_speed * 0.1;
}

if (mouse_check_button_pressed(mb_right)) {
	instance_create_layer(x, y, "Player", obj_burst);
	audio_play_sound(snd_burst, 10, false);
	alarm[1] = room_speed * 0.1;
}
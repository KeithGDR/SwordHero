/// @description Insert description here
// You can write your code in this editor

if (global.gameover || global.paused) {
	return;
}

if (random_range(0, 10) > 7) {
	for (var i = 0; i < hp_amount; i++) {
		loc_x = random(room_width);
		loc_y = random(room_height);
		instance_create_layer(loc_x, loc_y, "Player", obj_healthpack);
	}
}

if (random_range(0, 10) > 9) {
	loc_x = random(room_width);
	loc_y = random(room_height);
	instance_create_layer(loc_x, loc_y, "Player", obj_emp);
}

if (random_range(0, 10) > 7) {
	hp_amount += random_range(0, 1);
}
alarm[1] = room_speed * hp_rate;
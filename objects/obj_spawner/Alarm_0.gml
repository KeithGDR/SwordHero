/// @description Insert description here
// You can write your code in this editor

if (global.gameover || global.paused) {
	return;
}

for (var i = 0; i < amount; i++) {
	xMod = irandom_range(0, 65)
	yMod = irandom_range(0, 120)

	tempRoll = irandom_range(0,3)

	if tempRoll == 1 instance_create_layer(room_width + xMod, room_height + yMod, "Enemies", obj_enemy)
	else if tempRoll == 2 instance_create_layer(room_width + xMod, -yMod, "Enemies", obj_enemy)
	else if tempRoll == 3 instance_create_layer(-xMod, room_height + yMod, "Enemies", obj_enemy)
	else instance_create_layer(-xMod, -yMod, "Enemies", obj_enemy)
	//instance_create_layer(-5, -5, "Enemies", obj_enemy);
}

amount += random_range(1, 3);
alarm[0] = room_speed * rate;
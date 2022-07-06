/// @description Insert description here
// You can write your code in this editor

if (global.gameover || global.paused || global.winner) {
	return;
}

if (room != final_level) {
	for (var i = 0; i < amount; i++) {
		xMod = irandom_range(0, 65);
		yMod = irandom_range(0, 120);
		
		switch (irandom_range(0, 3)) {
			case 1: {
				instance_create_layer(room_width + xMod, room_height + yMod, "Enemies", obj_enemy);
				break;
			}
			case 2: {
				instance_create_layer(room_width + xMod, -yMod, "Enemies", obj_enemy);
				break;
			}
			case 3: {
				instance_create_layer(-xMod, room_height + yMod, "Enemies", obj_enemy);
				break;
			}
			default: {
				instance_create_layer(-xMod, -yMod, "Enemies", obj_enemy);
				break;
			}
		}
	}
}

if (room == level_2 || room == dev) {
	for (var i = 0; i < random_range(1, 2); i++) {
		xMod = irandom_range(0, 65)
		yMod = irandom_range(0, 120)

		tempRoll = irandom_range(0,3)

		if tempRoll == 1 instance_create_layer(room_width + xMod, room_height + yMod, "Enemies", obj_tank);
		else if tempRoll == 2 instance_create_layer(room_width + xMod, -yMod, "Enemies", obj_tank);
		else if tempRoll == 3 instance_create_layer(-xMod, room_height + yMod, "Enemies", obj_tank);
		else instance_create_layer(-xMod, -yMod, "Enemies", obj_tank);
	}
}

if (room == level_3 || room == dev) {
	for (var i = 0; i < random_range(0, 1); i++) {
		xMod = irandom_range(0, 65)
		yMod = irandom_range(0, 120)

		tempRoll = irandom_range(0,3)

		if tempRoll == 1 instance_create_layer(room_width + xMod, room_height + yMod, "Enemies", obj_bomba);
		else if tempRoll == 2 instance_create_layer(room_width + xMod, -yMod, "Enemies", obj_bomba);
		else if tempRoll == 3 instance_create_layer(-xMod, room_height + yMod, "Enemies", obj_bomba);
		else instance_create_layer(-xMod, -yMod, "Enemies", obj_bomba);
	}
}

amount += random_range(1, 3);
alarm[0] = room_speed * rate;
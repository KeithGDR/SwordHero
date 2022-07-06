/// @description Insert description here
// You can write your code in this editor

if (room != final_level && room != dev) {
	return;
}

xMod = irandom_range(0, 65);
yMod = irandom_range(0, 120);
		
switch (irandom_range(0, 3)) {
	case 1: {
		instance_create_layer(room_width + xMod, room_height + yMod, "Enemies", obj_boss);
		break;
	}
	case 2: {
		instance_create_layer(room_width + xMod, -yMod, "Enemies", obj_boss);
		break;
	}
	case 3: {
		instance_create_layer(-xMod, room_height + yMod, "Enemies", obj_boss);
		break;
	}
	default: {
		instance_create_layer(-xMod, -yMod, "Enemies", obj_boss);
		break;
	}
}
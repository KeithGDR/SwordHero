/// @description Insert description here
// You can write your code in this editor

var loc_x, loc_y;
if (random_range(0, 20) > 10) {
	loc_x = random(obj_player.x);
	loc_y = random(obj_player.y);
} else {
	loc_x = random(room_width);
	loc_y = random(room_height);
}

move_towards_point(loc_x, loc_y, 15);
alarm[0] = room_speed * 2;
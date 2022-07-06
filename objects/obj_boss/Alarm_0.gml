/// @description Insert description here
// You can write your code in this editor

var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);
loc_x = random(vw);
loc_y = random(vh);
move_towards_point(loc_x, loc_y, 10);
alarm[0] = room_speed * 3;
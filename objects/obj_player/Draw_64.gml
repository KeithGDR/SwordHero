/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);
draw_text(100, 32, "Score: " + string(global.score));
draw_set_halign(fa_right);
draw_text(room_width - 100, 32, "Health: " + string(global.health));

if (room == level_1) {
	draw_set_halign(fa_middle);
	draw_text(room_width - 500, 32, "Reach 500 score for level 2.");	
} else if (room == level_2) {
	draw_set_halign(fa_middle);
	draw_text(room_width - 500, 32, "Reach 1000 score for level 3.");
} else if (room == level_3) {
	draw_set_halign(fa_middle);
	draw_text(room_width - 500, 32, "Reach 1000 score to win the game.");	
}

if (global.health < 1) {
	global.gameover = true;
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, "Game Over, Press Space to Restart or Escape to main menu.");
}
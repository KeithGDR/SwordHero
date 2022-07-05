/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);
draw_text(100, 32, "Score: " + string(global.score));
draw_set_halign(fa_right);
draw_text(room_width - 100, 32, "Health: " + string(global.health));

if (global.health < 1) {
	global.gameover = true;
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, "Game Over, Press Space to Restart or Escape to main menu.");
}
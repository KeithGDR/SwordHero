/// @description Insert description here
// You can write your code in this editor

if (global.paused && !global.gameover) {
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, "Game is Paused.");
}

if (global.winner) {
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, "Congrats, you have won the game!\nThanks for playing.");
}

if (instance_exists(obj_boss)) {
	draw_set_halign(fa_middle);
	draw_text(room_width - 500, 32, "Boss: " + string(global.bosshealth) + "/" + string(global.bossmaxhealth));
}
/// @description Insert description here
// You can write your code in this editor

global.health = 250;
global.score = 0;
global.gameover = false;
global.paused = false;

audio_stop_sound(snd_background);
audio_play_sound(snd_background, 10, true);
audio_sound_gain(snd_background, 0, 0);
audio_sound_gain(snd_background, 0.5, 5000);
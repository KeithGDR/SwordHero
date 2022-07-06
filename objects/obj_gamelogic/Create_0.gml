/// @description Insert description here
// You can write your code in this editor

global.health = 500;
global.maxhealth = 500;
global.godmode = false;
global.score = 0;
global.gameover = false;
global.paused = false;
global.winner = false;
global.bosshealth = 1000;
global.bossmaxhealth = 1000;
global.bosslastdamagetaken = 0;

audio_stop_sound(snd_background);
audio_play_sound(snd_background, 10, true);
audio_sound_gain(snd_background, 0, 0);
audio_sound_gain(snd_background, 0.3, 5000);
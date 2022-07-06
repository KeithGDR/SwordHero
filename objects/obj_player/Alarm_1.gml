/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_burst)) {
	burst = instance_find(obj_burst, 1);
	instance_destroy(burst, true);
	image_index = 0;
}
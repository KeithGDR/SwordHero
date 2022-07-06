/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_slice)) {
	slice = instance_find(obj_slice, 1);
	instance_destroy(slice, true);
	image_index = 0;
}
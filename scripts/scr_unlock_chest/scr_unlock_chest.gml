if(sprite_index != spr_chest_unlocked){
	image_index = 0;
	sprite_index = spr_chest_unlocked;
	audio_play_sound(sfx_chest_opens, 1, false);
	obj_inventory.key = obj_inventory.key - 1;
	show_debug_message("Keys amount is: " + string(obj_inventory.key));
}
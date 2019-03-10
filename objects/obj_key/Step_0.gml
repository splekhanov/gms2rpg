if(place_meeting(x, y, obj_knight)){
	scr_add_key_to_inventory();
	audio_play_sound(sfx_key_picked, 2, false);
	instance_destroy();
}

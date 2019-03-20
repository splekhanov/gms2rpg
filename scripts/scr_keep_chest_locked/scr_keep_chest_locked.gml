if(sprite_index == spr_chest_locked and alarm[0] == -1){
	audio_play_sound(sfx_chest_locked, 2, false);
	alarm[0] = 320;
}
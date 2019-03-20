//COLLISION CHECK
if(obj_inventory.key > 0 and place_meeting(x, y, obj_player)){
	scr_unlock_chest();
} else if(obj_inventory.key <= 0 and place_meeting(x, y, obj_player)) {
	scr_keep_chest_locked();
}

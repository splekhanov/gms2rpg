//------MOVEMENT------

input_right = keyboard_check(ord("D"))
input_left = keyboard_check(ord("A"));
input_up = keyboard_check(ord("W"));
input_down = keyboard_check(ord("S"));

moveX = 0;
moveY = 0;

//------INTENDED MOVEMENT
moveX = input_right - input_left;
moveY = input_down - input_up;

if(moveX != 0 or moveY != 0){
	dir = point_direction(0,0,moveX,moveY);
	
	//------NORMALIZE SPEED
	moveX = lengthdir_x(spd, dir);
	moveY = lengthdir_y(spd, dir);

	//------COLLISION CHECKS
	//horisontal
	if(place_meeting(x+moveX, y, obj_collider)){
		repeat(abs(moveX)){
			if(!place_meeting(x+sign(moveX), y, obj_collider)){
			x += sign(moveX);
			} else {
				break;
			}
		}
		moveX = 0;
	}
	
	//vertical
	if(place_meeting(x, y+moveY, obj_collider)){
		repeat(abs(moveY)){
			if(!place_meeting(x, y+sign(moveY), obj_collider)){
				y += sign(moveY);
			} else {
				break;
			}
		}
		moveY = 0;
	}

	//------APPLY MOVEMENT
	y += moveY;
	x += moveX;
		
	//------SET SPRITES
	switch(dir){
		case 0:
			scr_char_walking(spr_player_run_right, "front_right");
			break;
		case 45:
			scr_char_walking(spr_player_run_right, "front_right");
			break;
		case 90:
			scr_char_walking(spr_player_run_up, "front_right");
			break;
		case 135:
			scr_char_walking(spr_player_run_left, "front_left");
			break;
		case 180:
			scr_char_walking(spr_player_run_left, "front_left");
			break;
		case 225:
			scr_char_walking(spr_player_run_left, "front_left");
			break;
		case 270:
			scr_char_walking(spr_player_run_down, "front_right");
			break;
		case 315:
			scr_char_walking(spr_player_run_right, "front_right");
			break;
	}
} else {

	switch(lastDirection){
		case "front_right":
			scr_char_idling(spr_player_idle_right, "front_right");
			break;
		case "front_left":
			scr_char_idling(spr_player_idle_left, "front_left");
			break;
	}
	
}

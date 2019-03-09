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
	image_speed = 2.5;
		
	//------SET SPRITES
	switch(dir){
		case 0:
			if(sprite_index != spr_knight_walk_front){
				image_index = 0;
				sprite_index = spr_knight_walk_front;
				lastDirection = "front";
			}
			break;
		case 45:
			if(sprite_index != spr_knight_walk_back){
				image_index = 0;
				sprite_index = spr_knight_walk_back;
				lastDirection = "back";
			}
			break;
		case 90:
			if(sprite_index != spr_knight_walk_back){
				image_index = 0;
				sprite_index = spr_knight_walk_back;
				lastDirection = "back";
			}
			break;
		case 135:
			if(sprite_index != spr_knight_walk_back){
				image_index = 0;
				sprite_index = spr_knight_walk_back;
				lastDirection = "back";
			}
			break;
		case 180:
			if(sprite_index != spr_knight_walk_front){
				image_index = 0;
				sprite_index = spr_knight_walk_front;
				lastDirection = "front";
			}
			break;
		case 225:
			if(sprite_index != spr_knight_walk_front){
				image_index = 0;
				sprite_index = spr_knight_walk_front;
				lastDirection = "front";
			}
			break;
		case 270:
			if(sprite_index != spr_knight_walk_front){
				image_index = 0;
				sprite_index = spr_knight_walk_front;
				lastDirection = "front";
			}
			break;
		case 315:
			if(sprite_index != spr_knight_walk_front){
				image_index = 0;
				sprite_index = spr_knight_walk_front;
				lastDirection = "front";
			}
			break;
	}
} else {

	switch(lastDirection){
		case "front":
			if(sprite_index != spr_knight_idle_front){
				image_index = 0;
			}
			sprite_index = spr_knight_idle_front;
			image_speed = 0.7;
			break;
		case "back":
			if(sprite_index != spr_knight_idle_back){
				image_index = 0;
			}
			sprite_index = spr_knight_idle_back;
			image_speed = 0.7;
			break;
	}
	
}

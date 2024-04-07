//Movements made with keyboard
if(keyboard_check(ord("W"))) {
	y -= move_spd
	image_speed = move_spd / 3;
	image_index +=1;
	
	if (image_index >= 11){
		image_index = 8;
	}
}

if(keyboard_check(ord("D"))) {
	x += move_spd
	image_speed = move_spd / 3;
	image_index +=1;
	
	if (image_index >= 16){
		image_index = 12;
	}
}

if(keyboard_check(ord("S"))) {
	y += move_spd
	image_speed = move_spd / 3;
	image_index +=1;
	
	if (image_index >= 8){
		image_index = 4;
	}
}


if(keyboard_check(ord("A"))) {
	x -= move_spd
	image_speed = move_spd / 3;
	image_index +=1;
	
	if (image_index >= 20){
		image_index = 16;
	}
}

if(keyboard_check(vk_nokey)){
	image_speed = 0;
	image_index += 1;
	
	if (image_index >= 5){
		image_index = 0;
	} 
}

//collisions
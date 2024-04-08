//var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
//var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
//var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
//var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));

//var _xinput = _right - _left;
//var _yinput = _down - _up;

//collisions
//move_and_collide(x * walkSpeed, y * walkSpeed, obj_wall)
var prev_x = x;
var prev_y = y;

if(keyboard_check(ord("D")) or keyboard_check(vk_right)) {
	x += walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = spr_mc_walkRight;
}

if(keyboard_check(ord("A")) or keyboard_check(vk_left)) {
	x -= walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = spr_mc_walkLeft;
}

if(keyboard_check(ord("S")) or keyboard_check(vk_down)) {
	y += walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = spr_mc_walkDown;
}

if(keyboard_check(ord("W")) or keyboard_check(vk_up)) {
	y -= walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = spr_mc_walkUp;
}

if(keyboard_check(vk_nokey)){
	image_index = 0;
	image_speed = 0;
	walkSpeed = 3.5;
}

if(keyboard_check(vk_shift)){
	walkSpeed = 7;
}

if place_meeting( x, y, obj_wall){
	x = prev_x;
	y = prev_y;
}



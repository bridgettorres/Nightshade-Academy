var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));

var _xinput = (_right - _left) * walkSpeed;
var _yinput = (_down - _up) * walkSpeed;

//collisions
//move_and_collide(x * walkSpeed, y * walkSpeed, obj_wall)
if place_meeting(x + _xinput, y, obj_wall){
	_xinput = 0;
}

if place_meeting(x, y + _yinput, obj_wall){
	_yinput = 0;
}

//var prev_x = x;
//var prev_y = y;

if(keyboard_check(ord("D")) or keyboard_check(vk_right)) {
	x += _xinput;
	image_speed = 1;
	sprite_index = spr_mc_walkRight;
	
	//var _xinput = keyboard_check(vk_right) - keyboard_check(vk_left);
	//var _yinput = keyboard_check(vk_down) - keyboard_check(vk_up);
	//move_and_collide(_xinput * walkSpeed, _yinput, obj_wall);
	//move_and_collide(_xinput * walkSpeed, _yinput, obj_bookself_9_full);
	//move_and_collide(_xinput * walkSpeed, _yinput, obj_bookself_hori1_unorganized);
	//move_and_collide(_xinput * walkSpeed, _yinput, obj_bookshelf_hori1_organized);
}

if(keyboard_check(ord("A")) or keyboard_check(vk_left)) {
	x += _xinput;
	image_speed = 1;
	sprite_index = spr_mc_walkLeft;
	//var _xinput = keyboard_check(vk_right) - keyboard_check(vk_left);
	//var _yinput = keyboard_check(vk_down) - keyboard_check(vk_up);
	//move_and_collide(_xinput * walkSpeed, _yinput, obj_wall);
	//move_and_collide(_xinput * walkSpeed, _yinput, obj_bookself_9_full);
	//move_and_collide(_xinput * walkSpeed, _yinput, obj_bookself_hori1_unorganized);
	//move_and_collide(_xinput * walkSpeed, _yinput, obj_bookshelf_hori1_organized);
}

if(keyboard_check(ord("S")) or keyboard_check(vk_down)) {
	y += _yinput;
	image_speed = 1;
	sprite_index = spr_mc_walkDown;
	//var _xinput = keyboard_check(vk_right) - keyboard_check(vk_left);
	//var _yinput = keyboard_check(vk_down) - keyboard_check(vk_up);
	//move_and_collide(_xinput * walkSpeed, _yinput, obj_wall);
	//move_and_collide(_xinput * walkSpeed, _yinput, obj_bookself_9_full);
	//move_and_collide(_xinput * walkSpeed, _yinput, obj_bookself_hori1_unorganized);
	//move_and_collide(_xinput * walkSpeed, _yinput, obj_bookshelf_hori1_organized);
}

if(keyboard_check(ord("W")) or keyboard_check(vk_up)) {
	y += _yinput;
	image_speed = 1;
	sprite_index = spr_mc_walkUp;
	//var _xinput = keyboard_check(vk_right) - keyboard_check(vk_left);
	//var _yinput = keyboard_check(vk_down) - keyboard_check(vk_up);
	//move_and_collide(_xinput * walkSpeed, _yinput, obj_wall);
	//move_and_collide(_xinput * walkSpeed, _yinput, obj_bookself_9_full);
	//move_and_collide(_xinput * walkSpeed, _yinput, obj_bookself_hori1_unorganized);
	//move_and_collide(_xinput * walkSpeed, _yinput, obj_bookshelf_hori1_organized);
}

if(keyboard_check(vk_nokey)){
	image_index = 0;
	image_speed = 0;
	walkSpeed = 3;
}

if(keyboard_check(vk_shift)){
	walkSpeed = 5;
}

//if place_meeting( x, y, obj_wall){
	//x = prev_x;
	//y = prev_y;
//}

//depth 
depth = -bbox_bottom;


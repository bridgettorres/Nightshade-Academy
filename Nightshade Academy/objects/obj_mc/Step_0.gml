var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));

var _xinput = _right - _left;
var _yinput = _down - _up;

if(_up) {
    image_index +=1;
    
    if (image_index >= 11){
        image_index = 8;
    }
}

if(_right) {
    image_index +=1;
    
    if (image_index >= 16){
        image_index = 12;
    }
}

if(_down) {
    image_index +=1;
    
    if (image_index >= 8){
        image_index = 4;
    }
}


if(_left) {
    image_index +=1;
    
    if (image_index >= 20){
        image_index = 16;
    }
}

if(keyboard_check(vk_nokey)){
    image_index += 1;
    
    if (image_index >= 5){
        image_index = 0;
    } 
}

//collisions
move_and_collide(_xinput * my_speed, _yinput * my_speed, obj_wall)

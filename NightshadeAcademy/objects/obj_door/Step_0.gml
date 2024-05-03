/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y, obj_mc){
	room_goto(target_rm);
	obj_mc.x = target_x;
	obj_mc.y = target_y;
}

if place_meeting(x, y, obj_mc_pj){
	obj_mc_pj.walkSpeed = 0;
	///room_goto(target_rm);
	//obj_mc_pj.x = target_x;
	//obj_mc_pj.y = target_y;
}
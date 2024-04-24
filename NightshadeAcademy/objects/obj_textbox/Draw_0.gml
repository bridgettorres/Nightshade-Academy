accept_key = keyboard_check_pressed(vk_space);
textbox_x = camera_get_view_x(view_camera[0]) + 115;
textbox_y = camera_get_view_y(view_camera[0]) + 230; //move textbox down
setup = false;

//setup
if setup == false
	{
	setup = true;
	draw_set_font(global.font_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop through the pages
	for(var p = 0; p < page_number; p++){
		//find how many characters are on each page
		text_length[p] = string_length(text[p]);
		//no character (center text on screen)
		text_x_offset[p] = 44;
	}
}


//typing text
if draw_char < text_length[page]
	{
		draw_char += text_spd;
		draw_char = clamp(draw_char, 0, text_length[page]);
		
	}

//flip through pages
if accept_key
	{
	//if the typing is done
	if draw_char == text_length[page]
		{
		if page < page_number-1
			{
				page++;
				draw_char = 0
			}
			//destroy textbox
		else
			{
				//link text for options
				if option_number > 0 {
					create_textbox(option_link_id[option_pos]);
				}
				instance_destroy();
			}
		}
	//if not done typing
	else
		{
			draw_char = text_length[page];
		}
	}
			
	
//draw text box
var _txtb_x = textbox_x + text_x_offset[page];
var _txtb_y = textbox_y;
txtb_img += txtb_img_spd;
txtb_spr_w = sprite_get_width(txtb_spr);
txtb_spr_h = sprite_get_height(txtb_spr);

//back of the text box
draw_sprite_ext(txtb_spr, txtb_img, _txtb_x, _txtb_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1);

//options
if draw_char == text_length[page] && page == page_number - 1{
	option_pos += keyboard_check(ord("E")) - keyboard_check(ord("Q"));
	option_pos = clamp(option_pos, 0, option_number-1);
	var _op_space = 15;
	var _op_bord = 4;
	for (var op = 0; op < option_number; op++){
	//option box
		var _o_w = string_width(option[op]) + _op_bord*2;
		draw_sprite_ext(txtb_spr, txtb_img, _txtb_x + 16, _txtb_y - _op_bord*option_number + _op_space*op - 25, _o_w/txtb_spr_w, (_op_space-1)/txtb_spr_h, 0, c_white, 1);
	//arrow
	if option_pos == op{
		draw_sprite(spr_textbox_arrow, 0, _txtb_x, _txtb_y - _op_bord*option_number + _op_space*op - 25);
	} 
	//options
	draw_text(_txtb_x + 16 + _op_bord, _txtb_y - _op_bord*option_number + _op_space*op - 25, option[op]);
	}
}
//draw the text
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(_txtb_x + border, _txtb_y + border, _drawtext, line_sep, line_width);
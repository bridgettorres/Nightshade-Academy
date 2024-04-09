//textbox parameters
depth = -800;
textbox_width = 320;
textbox_height = 95;
border = 8;
line_sep = 12;
line_width = textbox_width - border*2;
txtb_spr = spr_textbox;
txtb_img = 0;
txtb_img_spd = 0;

//the text
page = 0;
page_number = 0;
text[0] = "I gotta sleep early for my first day of school";
text[1] = "...";
text[2] = "...";
text[3] = "BEEP BEEP BEEP BEEP!";
text[4] = "BEEP BEEP BEEP BEEP!";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

//check if a setup has been done
setup = false;
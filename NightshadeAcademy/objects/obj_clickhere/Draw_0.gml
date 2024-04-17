if (keyboard_check_pressed(vk_space)) {
    global.spacebar_count++;
}


if (global.spacebar_count >= 16) {
            draw_set_font(global.font_main);
            draw_text(x, y, "Click on the Alarm Clock to Wake Up!");
        }
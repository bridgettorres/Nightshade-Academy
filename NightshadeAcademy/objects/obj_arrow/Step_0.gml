if (keyboard_check_pressed(vk_space)) {
    global.spacebar_count++;
}


if (!visible && global.spacebar_count >= 14) {
        visible = true;
        }
if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
		image_index = 1;
		
		if (mouse_check_button_pressed(mb_left) && global.ROM_file != "") {
			obj_program.extract_credits();
		}
}

else image_index = 0;

if (global.ROM_file == "") image_index = 2;
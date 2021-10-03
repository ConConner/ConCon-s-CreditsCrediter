if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
		image_index = 1;
		
		if (mouse_check_button_pressed(mb_left)) {
			obj_program.open_rom();
		}
}

else image_index = 0;
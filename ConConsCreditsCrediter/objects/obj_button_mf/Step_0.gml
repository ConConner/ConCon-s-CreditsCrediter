if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
		image_index = 1;
		
		if (mouse_check_button_pressed(mb_left)) {
			obj_program.credits_start = MF_credits_start;
			obj_program.credits_end = MF_credits_end;
			global.check = 1;
		}
}

else image_index = 0;
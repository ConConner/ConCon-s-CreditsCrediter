function open_rom() {
	global.ROM_file = get_open_filename("Zero Mission ROM (.gba)|*.gba", "")
}


function extract_credits() {
	end_reached = false;
	global.text_file = get_save_filename("credits.txt|*.txt", "");
	
	if (global.ROM_file != "" && global.text_file != "") {
		var _ROM = file_bin_open(global.ROM_file, 0); //opening the ROM
		var _txt = file_text_open_write(global.text_file); //opening the save text file
		
		//jumping to start of credits
		file_bin_seek(_ROM, hex_to_dec(credits_start));
		
		//writing the credits into a txt
		while (file_bin_position(_ROM) < hex_to_dec(credits_end) && !end_reached) {
			write_credits_line(_ROM, _txt);
		}
		
		file_bin_close(_ROM); //closing the ROM
		file_text_close(_txt);
	}
}


function import_credits() {
	end_reached = false;
	global.text_file = get_open_filename("Credits (.txt)|*.txt", "");
	var _save_as = get_save_filename("Edited ROM (.gba)|*.gba" ,"");
	
	if (global.ROM_file != "" && global.text_file != "") {
		var _txt = file_text_open_read(global.text_file); //opening the save text file
		var _ROM = buffer_load(global.ROM_file);
		
		//jumping to start of credits
		buffer_seek(_ROM, buffer_seek_start, hex_to_dec(credits_start));
		
		//rewriting credits data
		while(buffer_tell(_ROM) < hex_to_dec(credits_end) && end_reached != true) {
			read_credits_line(_txt, _ROM);
		}
		
		//fail-save if there is no actual end in credits
		buffer_poke(_ROM, hex_to_dec(credits_end) - 1, buffer_u8, 6);
		

		file_text_close(_txt);
		buffer_save(_ROM, _save_as)
		buffer_delete(_ROM)
	}
}
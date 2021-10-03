function write_credits_line(_rom, _txt) {
	var _line_string = "";
	var _byte = "";
	
	//initial line marker
	_byte = dec_to_hex(read_and_seek(_rom));
	_line_string = _byte + " ";
	
	if (_byte == "06") end_reached = true;
	
	//rest of line
	repeat(35) {
		_byte = dec_to_hex(read_and_seek(_rom));
		_byte = hex_to_ascii(_byte);
		
		if (_byte != "eol") _line_string = _line_string + _byte;
		
	}
	
	file_text_write_string(_txt, _line_string);
	file_text_writeln(_txt);

}
	
function read_credits_line(_txt, _rom) {
	var _line_string = "";
	var _byte = "";
	
	//reading line from credits file
	_line_string = file_text_readln(_txt);
	
	//trimming the strings off
	var _string_length = string_length(_line_string);
	if (_string_length > 38) _line_string = string_delete(_line_string, 39, _string_length - 38);
	
	//line marker
	_byte = hex_to_dec(string_char_at(_line_string, 2))
	buffer_write(_rom, buffer_u8, _byte);
	
	if (_byte = 6) end_reached = true;
	
	
	//writing rest of line
	for(var i = 4; i < string_length(_line_string); i++) {
		if !(i > string_length) {
			_byte = string_char_at(_line_string, i);
			_byte = ascii_to_hex(_byte);
			_byte = hex_to_dec(_byte);
		}
		else _byte = 0;
		
		buffer_write(_rom, buffer_u8, _byte);
		
	}
	repeat(39 - i) { //filling rest of line with blank
		buffer_write(_rom, buffer_u8, 0);
	}
}
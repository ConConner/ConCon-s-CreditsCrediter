function read_and_seek(file) { //reads a byte, returns read byte and seeks one byte
	
	var _pos = file_bin_position(file);
	var _byte = file_bin_read_byte(file);
	file_bin_seek(file, _pos + 1);
	
	return(_byte);
}

function write_and_seek(file, val) { //writes a byte and seeks one byte
	
	var _pos = file_bin_position(file);
	file_bin_write_byte(file, val);
	file_bin_seek(file, _pos + 1);
}
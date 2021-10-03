function dec_to_hex(dec) {
	/// @func   dec_to_hex(dec [, len=1])
	///
	/// @desc   Returns a given value as a string of hexadecimal digits.
	///         Hexadecimal strings can be padded to a minimum length.
	///         Note: If the given value is negative, it will
	///         be converted using its two's complement form.
	///
	/// @param  {real}      dec         integer
	/// @param  {real}      [len=1]     minimum number of digits
	///
	/// @return {string}    hexadecimal digits
	///
	/// GMLscripts.com/license
	
	
	var len = undefined;
    len = is_undefined(len) ? 1 : len;
    var hex = "";
 
    if (dec < 0) {
        len = max(len, ceil(logn(16, 2*abs(dec))));
    }
 
    var dig = "0123456789ABCDEF";
    while (len-- || dec) {
        hex = string_char_at(dig, (dec & $F) + 1) + hex;
        dec = dec >> 4;
    }
 
    return validate_hex(hex);
}
	 
function hex_to_dec(hex)
{
	/// @func   hex_to_dec(hex)
	///
	/// @desc   Returns an integer converted from an hexadecimal string.
	///
	/// @param  {string}    hex         hexadecimal digits
	///
	/// @return {real}      positive integer
	///
	/// GMLscripts.com/license
	
    var dec = 0;
 
    var dig = "0123456789ABCDEF";
    var len = string_length(hex);
    for (var pos=1; pos<=len; pos+=1) {
        dec = dec << 4 | (string_pos(string_char_at(hex, pos), dig) - 1);
    }
 
    return dec;
}

function validate_hex(hex) {

	if !(string_length(hex) > 1) {
		hex = "0" + hex;
	}
	return(hex);
}
	

function hex_to_ascii(hex) {
	_array_w = array_length(global.ascii_grid)
	
	for (var i = 0; i < _array_w; i++) { //finding ascii value
		
		var _value = global.ascii_grid[i,1];
		if (_value = hex) return(global.ascii_grid[i,0]);
		
	}
	
	//special cases
	if (hex == "00") {
		return "eol"
	}
	
	return hex //if no matching character is found it just returns the hex value
}

function ascii_to_hex(ascii) {
	_array_w = array_length(global.ascii_grid)
	
	for (var i = 0; i < _array_w; i++) { //finding hex value
		
		var _value = global.ascii_grid[i,0];
		if (_value = ascii) return(global.ascii_grid[i,1]);
		
	}
	return "00" //if no matching character is found it just returns empty value
	
}
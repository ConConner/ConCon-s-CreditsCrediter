global.ROM_file = "";
global.text_file = "";
end_reached = false;

global.ascii_grid = [[" ","20"],["A","41"],["B","42"],["C","43"],["D","44"],["E","45"],["F","46"],["G","47"],["H","48"],
					["I","49"],["J","4A"],["K","4B"],["L","4C"],["M","4D"],["N","4E"],["O","4F"],["P","50"],["Q","51"],
					["R","52"],["S","53"],["T","54"],["U","55"],["V","56"],["W","57"],["X","58"],["Y","59"],["Z","5A"],
					["a","61"],["b","62"],["c","63"],["d","64"],["e","65"],["f","66"],["g","67"],["h","68"],["i","69"],
					["j","6A"],["k","6B"],["l","6C"],["m","6D"],["n","6E"],["o","6F"],["p","70"],["q","71"],["r","72"],
					["s","73"],["t","74"],["u","75"],["v","76"],["w","77"],["x","78"],["y","79"],["z","7A"]];
					
#macro ZM_credits_start "0054C10C"
#macro ZM_credits_end "0054E2A9"

#macro MF_credits_start "0074B0B0"
#macro MF_credits_end "0074DC25"

credits_start = ZM_credits_start;
credits_end = ZM_credits_end;

global.check = 0;
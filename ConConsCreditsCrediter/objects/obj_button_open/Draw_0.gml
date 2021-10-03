draw_set_color(c_white);
draw_set_font(fnt_pixl);
draw_self();

draw_set_color(c_black);

if(global.ROM_file != "") {
	draw_text(x + sprite_width + 3, 0, "ROM LOADED");
}
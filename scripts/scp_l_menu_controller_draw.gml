draw_sprite(sprite_index,-1,x,y);

draw_set_color(c_white);
draw_set_alpha(0.8);
draw_set_halign(fa_left);
//draw_set_font(global.font_text);
//draw_set_font(global.font_blue);
draw_set_font(global.font_press_start);
draw_text_ext_transformed(46,6,spell_name + " - Level " + string(level) ,-1,-1,1.25,1.25,0 );
draw_set_font(global.font_blue_press_start);
//draw_text_ext_transformed(210,4,"Lvl " + string(level),-1,-1,1.5,1.5,0 );
draw_set_font(global.font_press_start);
draw_text_ext_transformed(48,22,spell_description,-1,-1,0.75,0.75,0 );

draw_set_font(global.font_blue_press_start);
draw_text_ext_transformed(36,44,"POWER:   RELOAD:   RANGE:      COUNT : "    ,-1,-1,1,1,0 );
draw_set_font(global.font_press_start);
draw_text(86,44,spell_power);
draw_text(170,44,spell_reload);
draw_text(244,44,spell_range);
draw_text(360,44,spell_quantity);


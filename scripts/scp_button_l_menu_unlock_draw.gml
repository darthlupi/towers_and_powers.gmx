scp_button_draw();


//global.spell_cost[spell];


//Draw money
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_font(global.font_score);
draw_text_transformed(x + 20,y, "COST $" + string(global.spell_cost[spell]),0.75,0.75,0 );




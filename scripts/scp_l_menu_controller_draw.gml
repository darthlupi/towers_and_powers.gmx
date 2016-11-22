draw_sprite(sprite_index,-1,x,y);

draw_set_color(c_white);
draw_set_alpha(0.8);
draw_set_halign(fa_left);
//draw_set_font(global.font_text);
//draw_set_font(global.font_blue);
draw_set_font(global.font_press_start);
draw_text_ext_transformed(46,6,spell_name ,-1,-1,1.25,1.25,0 );
draw_set_font(global.font_blue_press_start);
//draw_text_ext_transformed(210,4,"Lvl " + string(level),-1,-1,1.5,1.5,0 );
draw_set_font(global.font_press_start);
draw_text_ext_transformed(48,22,spell_description,-1,-1,0.75,0.75,0 );

draw_set_font(global.font_blue_press_start);
draw_text_ext_transformed(36,44,"POWER:   RELOAD:   RANGE:      AMMO : "    ,-1,-1,1,1,0 );
draw_set_font(global.font_press_start);
draw_text(86,44,spell_power);
draw_text(170,44,spell_reload);
draw_text(244,44,spell_range);
draw_text(360,44,spell_quantity);

//If spell level is 0 or less then draw how much is needed to unlock it
if ( level <= 0 ){
  //Draw money
  draw_set_halign(fa_left);
  draw_set_color(c_white);
  draw_set_font(global.font_score);
  draw_text_transformed(x + 255,y - 25, "$" + string(global.points),1,1,0 );
//Else draw the spell level and what is needed for the next level
} else {
  //Draw the spell level
  draw_set_halign(fa_left);
  draw_set_color(c_white);
  draw_set_font(global.font_score);
  draw_text_transformed(x + 255,y - 25, "LEVEL " + string(level) ,1,1,0 );

  spell_lvl_frame += 0.2;
  //if spel_lvl_frame > 20 then tmp_frame = 0;
  //Set how much of the level bar to show based on how close to leveling you are.
  //This is represented 0 to 1 ( precentage ) of exp vs exp for next level.
  if ( global.spell_exp[spell] == 0 ){
    tmp_lvl_percent = 0;
  }
  else{
    tmp_lvl_percent = global.spell_exp[spell] / ( global.spell_next_level[spell] * global.spell_level[spell] );
  }
  tmp_x = 260;
  draw_sprite_ext(spr_hud_spell_exp_b2,spell_lvl_frame,x+tmp_x,y+10,1,1,0,c_white,1);
  draw_sprite_ext(spr_hud_spell_exp_t2,-1,x+tmp_x + 82,y+10,1-tmp_lvl_percent,1,0,c_white,1);
  draw_set_color(c_white);
  draw_set_halign(fa_middle);
  draw_set_font(global.font_white);
  tmp_lvl_text = string( ( global.spell_next_level[spell]  * global.spell_level[spell] ) - global.spell_exp[spell]);
  draw_text(x+tmp_x +41,y - 4 ,"Next in " + tmp_lvl_text);  
  
  
  if keyboard_check_pressed(ord('M') ) then global.spell_exp[spell] += 1;
  
}

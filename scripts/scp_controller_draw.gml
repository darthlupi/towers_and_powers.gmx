//Draw the HUD and what not

x = view_xview[0];
y = view_yview[0] + 192;


//Create bottons
my_button_1.x = x+245;
my_button_1.y = y+8;
my_button_2.x = x+245 + 32 + 4;
my_button_2.y = y+8;
my_button_3.x = x+245 + 64 + 8;
my_button_3.y = y+8;
my_button_4.x = x+245 + 96 + 12;
my_button_4.y = y+8;

//If multipath movement draw the grid for debugging purposes
//draw_set_alpha(0.2);
//mp_grid_draw(global.mp_grid);
//draw_set_alpha(1);



//Uncomment if you decide to use the gui surface and scale it.
//Gui surface is always set to the screen size regardless of how the game is scaled.
//It is ideal to display images you DON'T want scaled.
//display_set_gui_size(400, 240);

//Draw the select box based on the grid coordinates.
//This can be removed if you are not using grid based movement.0
//draw_sprite(spr_grid_selection,-1,mouse_grid_x,mouse_grid_y);

draw_sprite(spr_hud,-1,x,y);


//Draw player health
if ( instance_exists(player_id) && player_id != -1 )
{
  for ( h = 0; h < player_id.hp_max; h+=1 )
  {
    draw_sprite(spr_player_health,1,x+118+h*4,y+8);
  }
  for ( h2 = 0; h2 < player_id.hp; h2+=1 )
  {
    draw_sprite(spr_player_health,0,x+118+h2*4,y+8);
  }
}
else
{
  for ( h = 0; h < global.hp_max[0]; h+=1 )
  {
    draw_sprite(spr_player_health,1,x+110+h*4,y+8);
  }

}


draw_set_font(global.font_score);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_font(global.font_white);
draw_text(x+144,y + 20,"LEVEL 1");
//draw_text(x+122,y + 1,"HEALTH");
draw_set_font(global.font_score);
draw_text_transformed(x + 10,y + 8, "$" + string(global.points),xscale,yscale,angle );




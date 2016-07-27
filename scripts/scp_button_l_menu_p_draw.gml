
scp_button_draw();
ani+= 0.15;
draw_sprite(p_sprite,ani,x+18,y+16);
draw_sprite(spr_player_1_wand,-1,x+18,y+16);

//Draw the selection thingy
if ( global.p_selected[p_index] ){
  draw_sprite(spr_this_player,ani,x + 12,y+5);

}


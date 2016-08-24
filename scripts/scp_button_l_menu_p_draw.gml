
scp_button_draw();
ani+= 0.15;

if ( walk_x < x+2 ){
  walk_x += 2;
  draw_sprite(p_sprite_walk,ani,walk_x,y+1);
}
else {
  draw_sprite(p_sprite,ani,walk_x,y+1);

}



draw_sprite(spr_player_1_wand,-1,walk_x,y+1);

//Draw the selection thingy
if ( global.p_selected[p_index] ){
  //draw_sprite(spr_this_player,ani,x + 12,y+5);

}


draw_sprite(sprite_index,-1,x,y);


if ( selected = 1 ){
  select_frame +=0.2;
  if select_frame > 15 then select_frame = 0;
  draw_sprite(spr_button_selected,select_frame,x,y);
}

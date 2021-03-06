//We add in the view_xview and yview because the view[1] does not move thus
//mouse x is not updated with the default views position since we are using view[1]:)
//Apparently the mouse x uses the relative position of the last drawn view.
x = start_x + view_xview[0];
y = start_y + view_yview[0];


if ( pause == 1 ){
  if ( view_current == 1 )
  {
    //We use a sprite because surfaces are volatile.
    //For example, a minimize will destroy it.
    draw_sprite(screen_sprite,image_index,0,0);

    alpha += 0.1;
    draw_set_color(c_black);
    draw_set_alpha(alpha);
    draw_rectangle(view_xview[0], view_yview[0],view_wview[0],view_hview[0],false);
    
    
    tmp_grow += 1;
    if tmp_grow > 11 then tmp_grow = 11;
    for ( ty = 0; ty < view_hview[0];ty+=32){
      for ( tx = 0; tx < view_wview[0];tx+=32){
        draw_sprite(spr_square_grow,tmp_grow,view_xview[0] + tx, view_yview[0] + ty); 
      }
    }  
    
    
    
  }
}


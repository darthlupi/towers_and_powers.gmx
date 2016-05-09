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
    //This does not need to be used, but we can use it for a fade out if 
    //we wanted...
    draw_set_alpha(0.8);
    draw_set_color(c_black);
    draw_rectangle(0,0,room_width,room_height,false);
    draw_set_alpha(1);
    draw_set_color(c_white);    
  }
}


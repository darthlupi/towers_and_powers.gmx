
//Set target coordinates
if ( mouse_check_button(mb_left)  )
{
  //If moused over the player than you can move the player
  //Move selectiong has started if you also press the mouse button
  if ( scp_mouse_over_check(obj_player,10) && mouse_check_button_pressed(mb_left) )
  {
    move_select = 1;
  }

  /*Double tap made it so deciding to shoot vs move was very very hard
  //Double tap -- comment out if you want to drag and select the player
  if ( alarm[3] > 0  && mouse_check_button_pressed(mb_left) )
  {
    move_select = 1;
  }
  if ( mouse_check_button_pressed(mb_left) )
  {
    alarm[3] = 30;
  }
  */
  
  //Aways move comment to disable :)
  move_select = 1;
    
  if ( move_select )
  {  
  
    //Set the icon for the mouse
    obj_controller.my_selection_thingy.state = 1;
  
    //Stop moving and recalculate path
    path_end();
    target_x = mouse_x + view_xview[0];
    target_y = obj_controller.mouse_grid_y + obj_controller.grid_size_y / 2 ;
    
    
    tmp_path_results = mp_grid_path(global.mp_grid, my_path, x, y, target_x, target_y, false);

    //Path length is used to draw the path
    path_ln = path_get_length(my_path);
    if path_ln = 0 then path_ln = 0.001;
    path_alpha = 1;
    
    //If no good path found
    if ( !tmp_path_results )
    {
      //Set the icon for the mouse
      obj_controller.my_selection_thingy.state = 2;
      //Uncomment if you want to not 
      //path_ln = 0.001;
    }

    
  }
}

//If move selected start moving along the path
if ( move_select && mouse_check_button_released(mb_left) )
{
  //if ( tmp_path_results )
  //{
    path_start(my_path,2,0,0);
  //}
  move_select = 0;
  //Set the icon for the mouse
  obj_controller.my_selection_thingy.state = 0;
  //Don't fire now
  if alarm[1] <= 0 then alarm[1] = 1;
}
path_alpha -= 0.1;

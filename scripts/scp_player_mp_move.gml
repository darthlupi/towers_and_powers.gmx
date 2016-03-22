

//Set target coordinates
if ( mouse_check_button(mb_left) || mouse_check_button(mb_right) )
{
  //If moused over the player than you can move the player
  //Move selectiong has started if you also press the mouse button
  if ( scp_mouse_over_check(obj_player,10) && mouse_check_button_pressed(mb_left) )
  {
    //Uncomment to allow drag and drop move
    //move_select = 1;
  }
  //Add a keyboard key check that could also be right mouse button???
  if ( keyboard_check_direct(ord('Z')) ||  mouse_check_button_pressed(mb_right) )
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
  //move_select = 1;
  
  
  //Increment the move counter ( how long you are holding down the mouse / screen
  //active move if holding down long enough
  //move_count += 1;
  //if move_count >= move_count_max then move_select = 1;
    
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
    if path_ln = 0 then path_ln = 0.0001;
    path_alpha = 1;
    
    //If no good path found
    if ( !tmp_path_results )
    {
      //Set the icon for the mouse
      obj_controller.my_selection_thingy.state = 2;
      //Uncomment if you want to not show path
      if !good_path_found then path_ln = 0.001;
    }
    else
    {
        //Found a good path
        //Prevents taking a path if no good one was found
        good_path_found = 1;
    }

    
  }
}

//If move selected start moving along the path
if ( mouse_check_button_released(mb_left) || mouse_check_button_released(mb_right))
{

    //Rest how long you are holding down the mouse
    //move_count = 0;

  if ( move_select )
  {
    //if ( tmp_path_results )
    //{
        if good_path_found == 1 then path_start(my_path,3,0,0);
        
    //}
    move_select = 0;
    good_path_found = 0;
    //Set the icon for the mouse
    obj_controller.my_selection_thingy.state = 0;
    //Don't fire now
    if alarm[1] <= 0 then alarm[1] = 1;
  }
}
path_alpha -= 0.1;

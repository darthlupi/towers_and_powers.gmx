
//Set the mouse coordinates as the target
target_x = mouse_x + view_xview[0];
target_y = obj_controller.mouse_grid_y + obj_controller.grid_size_y / 2 ;

//Set target coordinates
if ( mouse_check_button(mb_left) && jump == 0 ){
  //If moused over the player than you can move the player
  //Move selectiong has started if you also press the mouse button
  if ( scp_mouse_over_check(id,6) && mouse_check_button_pressed(mb_left) && !obj_controller.player_selected ){
    //Uncomment to allow drag and drop move
    move_select = 1;
    //Which player was selected
    obj_controller.player_selected = 1;
    obj_controller.player_id = id;
  }

  if ( move_select ){  
    //Set scale
    if mouse_x >= x then xscale = 1 else xscale = -1;
  
  
    //Set the icon for the mouse
    obj_controller.my_selection_thingy.state = 1;
  
    //Stop moving and recalculate path
    path_end();


    tmp_path_results = mp_grid_path(global.mp_grid, my_path, x, y, target_x, target_y, false);

    //Path length is used to draw the path
    path_ln = path_get_length(my_path);
    if path_ln = 0 then path_ln = 0.0001;
    path_alpha = 1;
    
    //If no good path found
    if ( !tmp_path_results ){
      //Set the icon for the mouse
      obj_controller.my_selection_thingy.state = 2;
      //Uncomment if you want to not show path
      if !good_path_found then path_ln = 0.001;
      
    }
    else{
        //Found a good path
        //Prevents taking a path if no good one was found
        good_path_found = 1;
    }

    
  }
}

//If move selected start moving along the path
if ( mouse_check_button_released(mb_left) || mouse_check_button_released(mb_right)){

  //If a good path was found then start that thang
  if ( move_select ){
    if ( good_path_found == 1 ){
      //There was a good path found, let's follow it!
      path_start(my_path,move_speed,0,0);
    }

    //Can select another player to move
    obj_controller.player_selected = 0;
    //No longer in the move select state
    move_select = 0;
    good_path_found = 0;
    //Set the icon for the mouse
    obj_controller.my_selection_thingy.state = 0;
    //Don't fire now
    if alarm[1] <= 0 then alarm[1] = 1;
  }
}
path_alpha -= 0.1;

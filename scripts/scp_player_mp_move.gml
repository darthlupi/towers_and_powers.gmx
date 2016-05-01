
//Set the path for the player
if ( mouse_check_button(mb_left) && jump == 0 && mouse_y < 192 ){//Set the mouse coordinates as the target
  
  //Only set the target one mouse press.
  //We use these variables to reset the path after an auto jump so it must stay set manually only.
  target_x = mouse_x + view_xview[0];
  target_y = obj_controller.mouse_grid_y + obj_controller.grid_size_y / 2 ;

  
  if ( mouse_check_button_pressed(mb_left) ){
   //Switch which player is selected on mb press.
   //We have to check all players at once to avoid moving an already selected player.
   //NICE TO HAVE: Could probably be done in a loop if I actually stored the id of each player in
   //an array.  Nice to have feature for later.  Add it in the player create :)
    //Check player 1
    if ( instance_exists(obj_player_1  )){
      if ( scp_mouse_over_check(obj_player_1,6) ){
        obj_controller.player_id = obj_player_1.id;
        //Create the graphic that shows the player is selected
        tmp_this_player = instance_create(x,y,obj_this_player);
        tmp_this_player.follow_id = obj_player_1.id;
      }
    }
    //Check player 2
    if ( instance_exists(obj_player_2 ) ){
      if ( scp_mouse_over_check(obj_player_2,6) ){
        obj_controller.player_id = obj_player_2.id;
        //Create the graphic that shows the player is selected
        tmp_this_player = instance_create(x,y,obj_this_player);
        tmp_this_player.follow_id = obj_player_2.id;        
      }
    }
    //Check player 3
    if ( instance_exists(obj_player_3 ) ){
      if ( scp_mouse_over_check(obj_player_3,6) ){
        obj_controller.player_id = obj_player_3.id;
        //Create the graphic that shows the player is selected
        tmp_this_player = instance_create(x,y,obj_this_player);
        tmp_this_player.follow_id = obj_player_3.id;
      }
    }
  }

    if ( obj_controller.player_id == id){
  
  
    //Set the icon for the mouse
    obj_controller.my_selection_thingy.state = 1;
  
    //Stop moving and recalculate path
    path_end();

    //Set the path my_path to path found IF one was found
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
        //Found a good path!  This means my_path is set to a valid path.
        good_path_found = 1;
    }
  }
}

//If move selected start moving along the path
if ( jump == 0 && ( mouse_check_button_released(mb_left) || mouse_check_button_released(mb_right) ) ){

  //If a good path was found then start that thang
  if ( obj_controller.player_id == id){
    if ( good_path_found == 1 ){
      //There was a good path found, let's follow it!
      path_start(my_path,move_speed,0,0);
    }
    //Reset the good path found back to 0
    good_path_found = 0;
    //Set the icon for the mouse
    obj_controller.my_selection_thingy.state = 0;
  }
}
//Make the dotted line disappear..
path_alpha -= 0.1;

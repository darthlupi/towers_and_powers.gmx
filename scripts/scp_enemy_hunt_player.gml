//Move towards the player

if ( instance_exists(obj_player_parent) && gravity == 0 && jump == 0  ){
  
    //Find the shortest path to the player...
    scp_enemy_short_path();  
    //Move towards the closest player or other target...
    if ( instance_exists(tmp_target) ){
      scp_enemy_mp_move(tmp_target.x,tmp_target.y);
      //Start moving on the path if one was found
      if ( tmp_path_results ){
        path_start(my_path,move_speed,0,0);
      }
    }
}

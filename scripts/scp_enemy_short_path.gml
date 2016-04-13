//This script is pretty dependent on the step event for the enemy.
//It is NOT very modular at all.
//Set the last length default from  a super long path length
tmp_long_ln = 99999999;
tmp_last_ln = tmp_long_ln;
//Tmp variables for converting the array values to something more readable
tmp_current_player = obj_player_parent;
tmp_current_ln = 99999999;

//Get closest player from the player array
//Loop through the player list array and record the length of path to player
for ( ps=0;ps<array_height_2d(tmp_player_list);ps+=1)  {
  tmp_current_player = tmp_player_list[ps,0];
  if ( instance_exists( tmp_current_player ) ){
    //This may be expensive.  This will create a path to each player
    //and record it's length.
    scp_enemy_mp_move(tmp_current_player.x,tmp_current_player.y);
    tmp_player_list[ps,1] = path_ln;
  }
  else //Make sure we ALWAYS set a path length even for non-existant players :)
  {
    tmp_player_list[ps,1] = tmp_long_ln;  //Make it a super long path ln
  }
}
  
//Loop through the player list array again and find the shortest path
for ( ps=0;ps<array_height_2d(tmp_player_list);ps+=1){
  //Use some easier vars duder
  tmp_current_player = tmp_player_list[ps,0];
  tmp_current_ln = tmp_player_list[ps,1];
    
  //If the current player we are looping through has 
  if ( instance_exists( tmp_current_player ) ){
    //If we are not checking the first player in the array then 
    //Compare against the previous shortest distance ELSE it is the
    //shortest distance recorded as it is the first.
    if ( ps > 0 ){
      if ( tmp_current_ln < tmp_last_ln ){
        tmp_target = tmp_current_player;
        tmp_last_ln = tmp_current_ln;
      }
    }
    else {
      tmp_target = tmp_current_player;
      tmp_last_ln = tmp_current_ln;
    }
  }
}

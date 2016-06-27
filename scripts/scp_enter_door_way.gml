//If the door is open then move to the next room
if ( open == 1 ){
  //Remove the player from the room...
  with(other){
    instance_destroy();
    with(my_wand){ instance_destroy() }
  }
  //Select anthor player...
  with( obj_controller ){
    //Which player was selected
    player_selected = 0;
    if ( instance_exists(obj_player_1) ) {
      player_id = obj_player_1.id;
    }else if ( instance_exists(obj_player_2) ) {
      player_id = obj_player_2.id;
    }else if ( instance_exists(obj_player_3) ) {
      player_id = obj_player_3.id;
    }else{
      player_id = -1;
    }   
  }
  //If all the players are gone the go to next level...
  if ( !instance_exists(obj_player_parent) ){
    instance_create(x,y,obj_transition_blocks);
  }
}

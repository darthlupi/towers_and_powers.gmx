//Check player 1
if ( instance_exists(obj_player_1  )){
    player_id = obj_player_1.id;
    //Create the graphic that shows the player is selected
    tmp_this_player = instance_create(x,y,obj_this_player);
    tmp_this_player.follow_id = obj_player_1.id;
}

//Check player 2
if ( instance_exists(obj_player_2) && !instance_exists(obj_player_1)  ){
    player_id = obj_player_2.id;
    //Create the graphic that shows the player is selected
    tmp_this_player = instance_create(x,y,obj_this_player);
    tmp_this_player.follow_id = obj_player_2.id;
}

//Check player 3
if ( instance_exists(obj_player_3)  && !instance_exists(obj_player_1)  && !instance_exists(obj_player_2)  ){
    player_id = obj_player_3.id;
    //Create the graphic that shows the player is selected
    tmp_this_player = instance_create(x,y,obj_this_player);
    tmp_this_player.follow_id = obj_player_3.id;
}



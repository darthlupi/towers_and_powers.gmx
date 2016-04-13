//This will eventually store the closest player or target player.
//For now we just point it towards the player parent object.
tmp_target = obj_player_parent;

//This 2d array is used to record the potential players
//The first dim is used to record which player and the 
//second is set thus: 0 = player obj id, 1 = recorded path length to that player 
tmp_player_list[] = 0;
tmp_player_list[0,0] = obj_player_1;
tmp_player_list[1,0] = obj_player_2;
tmp_player_list[2,0] = obj_player_3;

//Set depth
depth = -y;

//Basic movement using the multipathing examples
if ( random(100)> 90  && instance_exists(obj_player_parent) && gravity == 0  ){

  //Find the shortest path to the player...
  scp_enemy_short_path();  

  //Move towards the closest player...
  scp_enemy_mp_move(tmp_target.x,tmp_target.y);
  
  //Start moving on the path if one was found
  if ( tmp_path_results ){
    path_start(my_path,move_speed,0,0);
  }

}

//Get the image_xscale
if ( direction < 90 || direction > 270 ){
  xscale = 1
}
else if ( direction > 90 && direction < 270 ){
  xscale = -1;
}

//Jumping or falling
//scp_enemy_jump_fall()
//Sprite selection
scp_enemy_sprite();


///////////////////////
//Kill the enemy if...
///////////////////////

//Off screen left
if x < view_xview[0] -sprite_width and hspeed < 0 then instance_destroy();
//Off screen right
if x > view_xview[0] + view_wview[0] and hspeed > 0 then instance_destroy();
//Out of hit points
if hp <= 0 then instance_destroy();

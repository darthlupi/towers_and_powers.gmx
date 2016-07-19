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

//Freeze the enemy

if ( !alarm[4] ){

  //Hunt the player
  if random(100) > 50 then scp_enemy_hunt_player();  

  //Stop in your tracks if you are possibly colliding with traps
  if ( jump == 0 && scp_enemy_check_obstacles(obj_obstacle_parent,20,xscale) ){
    path_end();
    hspeed = 0;
    vspeed = 0;
  }  

  //Jumping and collisions
  //Auto jump
  if ( ( place_meeting(x,y,obj_block_jump) || place_meeting(x,y,obj_obstacle_parent) ) && should_jump == 0 && jump == 0 && alarm[2] <= 0  && !flying){
    should_jump = 1;
    //Sounds
    audio_play_sound(snd_jump,1,false);
   //We should never have to auto reset the path for enemies.  They already do that.
   jump_path = 0;
   //Set direction and xscale!
   tmp_block = instance_place(x,y+vspeed,obj_block_jump);
   //Set the jump cool down
   alarm[2] = 30;
  }

  
  //Perform the actual jump
  scp_jump_fall();
  
} else {
  
  path_end();
}

//Check for collisions
scp_platform_collision();  
  
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


//Make sure the target gives exp.  Obstacle collisions should set this to false.
give_exp = true;




//Make sprite selection based on various  status here
tmp_sprite = sprite_stand_still;
image_speed = 0.25;


//Moving
if ( ( path_speed && path_index != -1 ) || ( place_meeting(x,y,obj_block_air) && jump == 0 ) )
{
  //Change the xscale based upon move direction only if no enemy is targeted.
  //We want to use the xscale set based on direction to enemy if we have an enemy
  //in sites.
  if ( !enemy_target ){
    scp_set_xscale();
  }

  //Moving and climbing
  if ( place_meeting(x,y,obj_block_ladder) && ! position_meeting(x,bbox_bottom + 1,obj_block) ) 
  {
    tmp_sprite = sprite_climb;
  }
  else  //Moving and walking
  {
    tmp_sprite = sprite_walk; 
  }
}
else if ( !jump )//Standing still
{ 
  //Standing still and climbing
  if ( place_meeting(x,y,obj_block_ladder) && ! position_meeting(x,bbox_bottom+ 1,obj_block) ) 
  {
    tmp_sprite = sprite_climb_still;
  }
  else  //Standing still
  {
    tmp_sprite = sprite_stand_still;
  }
}

//Jumping
if ( jump ){
  if ( vspeed <= 0 ){
    tmp_sprite = sprite_jump_u; 
  } else {
    tmp_sprite = sprite_jump_d;
  }
}

//Set xscale for  if holding down the mouse...
if ( obj_controller.player_id == id && mouse_check_button(mb_left) && jump == 0 && mouse_y < 192 ){//Set the mouse coordinates as the target
  target_x = mouse_x + view_xview[0];
  if target_x > x then xscale = 1 else xscale = -1;
}

return tmp_sprite;

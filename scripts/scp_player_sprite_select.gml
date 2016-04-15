
//Make sprite selection based on various player status here

tmp_sprite = sprite_stand_still;
image_speed = 0.25;

//Moving
if ( ( path_speed && path_index != -1 ) || ( place_meeting(x,y,obj_block_air) && jump == 0 ) )
{

  //Set the xscale
  if ( direction < 90 || direction > 270 ){
    xscale = 1 
  }
  else if ( direction > 90 && direction < 270 ){
    xscale = -1
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





return tmp_sprite;

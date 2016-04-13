
//Make sprite selection based on various player status here

tmp_sprite = sprite_stand_still;
image_speed = 0.25;

//Moving
if ( path_speed && path_index != -1 )
{
  d = direction;
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
else //Standing still
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




return tmp_sprite;

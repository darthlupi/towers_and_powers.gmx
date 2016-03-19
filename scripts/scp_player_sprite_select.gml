
//Make sprite selection based on various player status here

tmp_sprite = spr_player_s;
image_speed = 0.25;

//Moving
if ( path_speed && path_index != -1 )
{
  d = direction;
  //Moving and climbing
  if ( place_meeting(x,y,obj_block_ladder) && ! position_meeting(x,bbox_bottom + 1,obj_block) ) 
  {
    tmp_sprite = spr_player_c;
    if attack_charge > 0 then tmp_sprite = spr_player_c_a; 
  }
  else  //Moving and walking
  {
    tmp_sprite = spr_player_w;
    if attack_charge > 0 then tmp_sprite = spr_player_w_a; 
  }
}
else //Standing still
{ 
  //Standing still and climbing
  if ( place_meeting(x,y,obj_block_ladder) && ! position_meeting(x,bbox_bottom+ 1,obj_block) ) 
  {
    tmp_sprite = spr_player_cs;
    if attack_charge > 0 then tmp_sprite = spr_player_cs_a; 
  }
  else  //Standing still
  {
    tmp_sprite = spr_player_s;
    if attack_charge > 0 then tmp_sprite = spr_player_s_a; 
  }
}

//Jumping and falling
if ( jump > 0 )
{
  image_speed = 0.5;
  tmp_sprite = spr_player_j;
  if attack_charge > 0 then tmp_sprite = spr_player_j_a; 
}
if ( gravity > 0 )
{
  tmp_sprite = spr_player_f;
  if attack_charge > 0 then tmp_sprite = spr_player_f_a; 
}


return tmp_sprite;

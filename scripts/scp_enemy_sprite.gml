///////////////////////
//Sprite selection
//and index selection
///////////////////////


//Set the image_xscale if not being knocked back
if ( !knocked_back ){
  scp_set_xscale();
}

//Moving and climbing
if ( place_meeting(x,y,obj_block_ladder) && ! position_meeting(x,bbox_bottom + 1,obj_block) ) 
{
  sprite_index = sprite_climb;
}
else  //Moving and walking
{
  sprite_index = sprite_walk;
}

if ( jump > 0 )
{
  sprite_index = sprite_jump;
}

//Rotate if we are on the last frame.  Last frame is for damage.  Second to last if frozen.
if ( image_index > image_number - 3 )
{
    image_index = 0;
}

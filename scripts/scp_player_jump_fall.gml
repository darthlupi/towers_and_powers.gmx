//Falling or jumping

//Look half of the bbox width ahead for potential jumps.
//Get the direction to check ahead
if ( direction < 90 || direction > 270 )
{
  tmp_plusx = ((bbox_right-x)/2) 
}
else if ( direction > 90 && direction < 270 )
{
  tmp_plusx = -((bbox_right-x)/2) 
}

//Trying to jump
//If moving along path and nothing is below your feet ahead or not a ladder then try to jump
if ( jump == 0 )
{

  
}
else if ( vspeed > 0 )
{
   
  //Place this object over the object it collided with.
  tmp_block = -1;
  if place_meeting(x,y+vspeed,obj_block) then tmp_block = instance_place(x,y+vspeed,obj_block);
  if tmp_block then y = tmp_block.y - (bbox_bottom - y) -1;

  vspeed = 0;
  hspeed = 0;
  gravity = 0;
  if jump > 0 then jump -= 1;
}


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
if ( ( ! place_meeting(x,y+2,obj_block) || ! place_meeting(x + tmp_plusx,y+2,obj_block) ) 
  && ( ! place_meeting(x,y+2,obj_block_ladder) || ! place_meeting(x+tmp_plusx,y+2,obj_block_ladder) )  )
{
  //Set the jump timer to the max jump reset the animation
  if ( jump == 0 && gravity == 0 )
  {
    jump = jump_max;
    image_index = 0;
  }
  //Start falling
  if ( jump <= 1 && gravity == 0 )
  {
    path_end();
    gravity = 0.5;
    //Add a little vspeed to get things started
    vspeed = 1;
  }  
  //Start the jump count down
  if jump > 0 then jump -= 1;
  
}
else //Falling or normal movement
{
  //Falling and colliding
  if ( vspeed > 0 )
  {
   
    //Place this object over the object it collided with.
    tmp_block = -1;
    if place_meeting(x,y+vspeed,obj_block) then tmp_block = instance_place(x,y+vspeed,obj_block);
    if place_meeting(x,y+vspeed,obj_block_ladder) then tmp_block = instance_place(x,y+vspeed,obj_block_ladder);
    if tmp_block then y = tmp_block.y - (bbox_bottom - y) -1;
    path_speed = 0;
  }
  vspeed = 0;
  gravity = 0;
  if jump > 0 then jump -= 1;
}


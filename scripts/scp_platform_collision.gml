//Collisions while moving
if ( vspeed != 0 || hspeed != 0 || gravity != 0 ) {
  //Place this object over the object it collided with.
  tmp_block = -1;

  //Hitting your head
  if ( vspeed < 0 )
  {
    if ( place_meeting(x,y+vspeed,obj_block) ){
      tmp_block = instance_place(x,y+vspeed,obj_block);
      y = tmp_block.bbox_bottom + 7 ;
      //vspeed = 0;
    }
  }
  
  //Landing
  if ( vspeed > 0 ){
    if place_meeting(x,y+vspeed,obj_block) then tmp_block = instance_place(x,y+vspeed,obj_block);
    if ( tmp_block || ( place_meeting(x,y,obj_block_ladder) && !place_meeting(x,y,obj_block_air) ) ) {
      //Place the player OVER the block they collided with
      if tmp_block then y = tmp_block.y - (bbox_bottom - y) -1;
      vspeed = 0;
      hspeed = 0;
      gravity = 0;
      jump = 0;
    }
  }
  
  //Colliding sideways
  if ( hspeed != 0 )
  {
    if ( place_meeting(x + hspeed ,y,obj_block) ){
      x += -hspeed;
      hspeed = 0;
    }
  }  
  
}

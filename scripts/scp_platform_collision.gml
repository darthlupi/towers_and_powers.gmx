//Multipath will allow collisions up to 1 pixel inside the bounding box of an object.
//This is a little frustrating.  This is one solution to become unstuck...
if ( place_meeting(x,y-1,obj_block) )
{
  tmp_block = instance_place(x,y-1,obj_block);
  if ( tmp_block.x + tmp_block.sprite_width / 2 >= x ){
    x-= 1;
  } else {
    x+= 1; 
  }
}


//Collisions while moving
if ( vspeed != 0 || hspeed != 0 || gravity != 0 ) {
  //Place this object over the object it collided with.
  tmp_block = -1;

  //Colliding sideways
  if ( hspeed != 0 )
  {
    if ( place_meeting(x + hspeed ,y,obj_block) ){
      if (hspeed<=0){
        move_contact_solid(180,abs(hspeed));
      }
      if (hspeed>0){
        move_contact_solid(0,abs(hspeed));
      }
      hspeed=0;
    }
  }

  //Hitting your head
  if ( vspeed < 0 )
  {
    if ( place_meeting(x,y+vspeed,obj_block) ){
      //We move down one pixel to make sure we don't get stuck in the wall.
      if place_free(x,y+1) then y +=1;
      move_outside_solid(90,abs(vspeed) );
      vspeed = 0;
    }
  }  

  //Landing
  if ( vspeed >= 0 ){
    if ( place_meeting(x,y+vspeed,obj_block) || ( place_meeting(x,y,obj_block_ladder) && !place_meeting(x,y,obj_block_air) ) ) {

      if ( place_meeting(x,y+vspeed,obj_block) ){
        if (vspeed>0){move_contact_all(270,abs(vspeed));}
      }
      //Reset the jump variables
      scp_jump_reset();
      //Move to the previous target set after jumping.
      //Only do it if the distance is > 24.  We do this to avoid the loop
      //that occurs if the target is the middle of a jump block.
      //The player will jump past the block and try to get to the center again.  Ugly jump loop.
      //Only reset teh path if jump was triggered from a collision wit a jump block - jump_path.
      if ( distance_to_point(target_x,target_y) > 24 && jump_path ){
         tmp_path_results = mp_grid_path(global.mp_grid, my_path, x, y, target_x, target_y, false);
         if ( tmp_path_results ){
            path_start(my_path,move_speed,0,0);
            jump_path = 0; //Make sure this is set back to 0 to avoid trying to reset the path for manual jumps too.
         }        
      }

    }
  }
  
     
  
}

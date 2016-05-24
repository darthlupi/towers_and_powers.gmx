


//Collisions while moving
if ( vspeed != 0 || hspeed != 0 || gravity != 0 ) {
  //Place this object over the object it collided with.
  tmp_block = -1;

  //Colliding sideways
  if ( hspeed != 0 )
  {
    if ( place_meeting(x + hspeed ,y,obj_block) ){
      //tmp_block = instance_place(x+hspeed,y,obj_block);
      //if ( hspeed > 0 ){
      //  x = tmp_block.x - (   bbox_right - x ) - 2
      //}
      //if ( hspeed < 0 ){
      //  x = tmp_block.bbox_right + ( x - bbox_left ) + 2;
      //}
      //hspeed = 0;
      if (hspeed<=0){move_contact_solid(180,abs(hspeed));}
      if (hspeed>0){move_contact_solid(0,abs(hspeed));}
      hspeed=0;
    }
  }

    //Hitting your head
  if ( vspeed < 0 )
  {
    if ( place_meeting(x,y+vspeed,obj_block) ){
    //  tmp_block = instance_place(x,y+vspeed,obj_block);
    //  y = tmp_block.bbox_bottom + ( y - bbox_top ) + 2 ;
    //  vspeed = 0;
      move_contact_solid(90,abs(vspeed) );
      vspeed = 0;
    }
  }  

  //Landing
  if ( vspeed >= 0 ){
    if ( place_meeting(x,y+vspeed,obj_block) || ( place_meeting(x,y,obj_block_ladder) && !place_meeting(x,y,obj_block_air) ) ) {
      //if place_meeting(x,y+vspeed+1,obj_block) then tmp_block = instance_place(x,y+vspeed+1,obj_block)
      //Place the player OVER the block they collided with
      //if tmp_block then y = tmp_block.y - (bbox_bottom - y) -1;
      
      if ( place_meeting(x,y+vspeed,obj_block) ){
        if (vspeed>0){move_contact_solid(270,abs(vspeed));}
      }
      
      vspeed = 0;
      hspeed = 0;
      gravity = 0;
      jump = 0;
      should_jump = 0; //Something, button or event, should trigger the jump
      
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

//Make sure we don't set should jump if we are jumping!
if ( jump == 1 ){
  should_jump = 0;
  //path_end(); //Always stop moving on the path if jumping...
}

//Falling or jumping
if ( jump == 0 && should_jump  ){
  y -= 1; //SOMETIMES the player is 1 pixel stuck in the floor for fun...
  jump = 1;
  should_jump = 0; //Something, button or event, should trigger the jump
  vspeed = -2; 
  gravity = 0.4;
  hspeed = xscale * jump_speed;
  path_end();
}



//We cannot walk if we are stuck on an air tile, so move off of it if not jumping.
if ( place_meeting(x,y,obj_block_air) && jump == 0 )
{
  tmp_block = instance_place(x,y+vspeed,obj_block_air);
  if ( tmp_block.x + tmp_block.sprite_width / 2 >= x ){
    x-= move_speed
    direction = 180; //For setting 
  } else {
    x+= move_speed; 
    direction = 0;
  }
}

//Limit vspeed
if vspeed > 10 then vspeed = 10;

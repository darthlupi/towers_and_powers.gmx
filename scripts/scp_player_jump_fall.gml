//Falling or jumping

//Look half of the bbox width ahead for potential jumps.
//Get the direction to check ahead
if ( direction < 90 || direction > 270 )
{
  tmp_plusx = 1 
}
else if ( direction > 90 && direction < 270 )
{
  tmp_plusx = -1
}

//Trying to jump
if ( keyboard_check_pressed(ord('X') ) || mouse_check_button_pressed(mb_right) ) && obj_controller.player_id == id then should_jump = 1;
//
if ( jump == 0 && should_jump  ){
  y -= 1; //SOMETIMES the player is 1 pixel stuck in the floor for fun...
  jump = 1;
  should_jump = 0;
  vspeed = -2; 
  gravity = 0.4;
  hspeed = xscale * 3;
  path_end();
}

//We cannot walk if we are stuck on an air tile, so move off of it.
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


image_angle = 0 + hspeed;

//KO if out of hp
if ( hp <= 0 )
{
    with(my_wand){instance_destroy();}
    hp = 0;
    scp_create_chunks(sprite_index,2,x - abs(sprite_xoffset),y - abs(sprite_yoffset),bbox_bottom,xscale,yscale,0);
    instance_destroy();
}   

//Movement code
scp_player_mp_move();



tmp_jump_block = instance_position(x,y,obj_block_jump);
if ( path_speed && path_index != -1 ){
  last_jump_block = -1;
}
//Auto jump
if ( tmp_jump_block && should_jump == 0 && jump == 0 ){
 
  if ( last_jump_block != tmp_jump_block )
  {
    should_jump = 1;
    //Sounds
    audio_play_sound(snd_jump,1,false);
    //If auto jumping then rest the path once you land if you are 
    jump_path = 1;
    //Not auto jumping so we don't want to follow the path after jumping
    if manual_jump then jump_path = 0;
   //Just making sure we are facing in the proper direction
    scp_set_xscale();
    last_jump_block = tmp_jump_block;
  }
}
//Jumping or falling
scp_jump_fall();
//Reset the manual jump :)
if jump = 0 then manual_jump = 0;


//Collisions
scp_platform_collision();
//Level up
scp_player_level_up();

//Shooting 
scp_player_attack();

//Select sprites
sprite_index = scp_player_sprite_select();

//Moving outside of the room!
if ( bbox_left < 0 ){
  hspeed = 0;
  x+= 2;
}
if ( bbox_right > room_width ){
  hspeed = 0;
  x-= 2;
}
if ( y > room_height ){
  hp = 0;
}
if ( bbox_top < 0 ){
  vspeed = 0;
  y += 2;
}






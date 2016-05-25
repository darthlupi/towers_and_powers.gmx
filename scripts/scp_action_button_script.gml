

//Make the player jump
if ( instance_exists( obj_controller.player_id ) )
{
  with(obj_controller.player_id)
  {
    if ( !jump ){
      audio_play_sound(snd_jump,1,false);
      should_jump = 1;
      manual_jump = 1;
      //Make sure the jump path is not set.  This will auto set the path at the end of the jump.
      jump_path = 0; 
    }
  } 
}

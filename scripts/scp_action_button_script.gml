//audio_play_sound(snd_game_over,1,false);

//Make the player jump
if ( instance_exists( obj_controller.player_id ) )
{
  with(obj_controller.player_id)
  {
    should_jump = 1;
  } 
}

range = 180
if ( alarm[6] <= 0 ){

  audio_play_sound(snd_game_over,1,false);

  if ( xscale == 1 ) {
    tmp_a_dir = 0;
  }
  if ( xscale == -1 ) {
    tmp_a_dir = 180;
  }

  my_attack = instance_create(x,y,obj_proj_sprout_1);
  my_attack.range = range;
  my_attack.attack = 2 + attack;
  my_attack.dir = tmp_a_dir;
  tmp_reload = 50;
  //Set the range on the attack
  with(my_attack){
    if range > 0 then alarm[0] = range / speed + 1 else alarm[0] = 0;
  }
  
  //Attack sprite setup
  my_wand.attack_1 = 1;
  my_wand.image_index = 0;
  
  alarm[6] = tmp_reload - reload;
  if alarm[6] <= 0 then alarm[1] = 1;

}

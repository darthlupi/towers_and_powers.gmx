tmp_length = argument0;  //Max beam length
tmp_angle = argument1;  //Angle to move 
tmp_step = argument2;   //How may pixels to move per step
tmp_goal = argument3;  //Target object
tmp_block = argument4; //Blocking object
tmp_start_point = argument5;

for ( b=10;b<=tmp_length;b+=tmp_step){

  tmp_x = x + lengthdir_x(b,tmp_angle);
  tmp_y = y + lengthdir_y(b,tmp_angle);

  if ( collision_line(x,y,tmp_x ,tmp_y ,tmp_block,false,true) ){
    break;
  }
  tmp_target = collision_line(x,y,tmp_x ,tmp_y ,tmp_goal,false,true);
  //Do damage
  //Put what ever custom scripts you want to use for when a positive collision occurs.
  if ( tmp_target ){
    if ( alarm[2] <= 0 ){
      tmp_target.alarm[0] = 5;
      scp_player_do_damage(attack,tmp_target);
      //Sounds
      audio_play_sound(snd_hit,1,false);
      alarm[2] = 5;
    }
    return b;
  }
}
return b;

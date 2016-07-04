tmp_target = argument0;

//Knock the enemy back :)
tmp_target.hspeed = image_xscale*2;
with(tmp_target){
  path_end();
  vspeed = -2;
  jump = 1;
  gravity = 0.4;
  //This is status reset in by triggering alarm[3] OR if the enemy lands on his feet again.
  //This really just keeps the enemy facing in the direction it was facing when collided with.
  knocked_back = 1;
  //For flying enemies you really want to trigger alarm[3].
  //This not only removes the knocked back status but it allows removes gravity and jump states.
  if flying then alarm[3] = knocked_back_delay;
}

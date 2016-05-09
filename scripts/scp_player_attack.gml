
//Determine attack direction
tmp_m_dir = point_direction(x,y,mouse_x + view_xview[0],mouse_y + view_yview[0]);



if ( xscale == 1 ) {
  tmp_a_dir = 0;
}
if ( xscale == -1 ) {
  tmp_a_dir = 180;
}



//Attack if the reload alarm is not set and we are not moving this step
if ( !move_select  ){
  //Attack if the alarm for being ready to shoot again OR being read to run can hit is ready
  if ( alarm[1] <= 0 ){
    //Check to see if you can actually shoot the enemy before attacking
    //Currently scp_can_hit check in degrees of 15
    if ( global.wand[p_index] == 0 ){
        scp_spell_machine_gun();
    }

  }
}




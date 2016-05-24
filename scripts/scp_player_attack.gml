
//Mouse dir incase we ever want to attack that direction?
tmp_m_dir = point_direction(x,y,mouse_x + view_xview[0],mouse_y + view_yview[0]);


//Attack if the reload alarm is not set and we are not moving this step
//Also, make sure you are alive :)
if ( !move_select && hp > 0 ){
  //Attack if the alarm for being ready to shoot again OR being read to run can hit is ready
  if ( alarm[1] <= 0 ){
    
    if ( global.wand[p_index] == 0 ){
        scp_spell_machine_gun();
    }

  }
}




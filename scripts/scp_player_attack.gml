
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
  if ( alarm[1] <= 0 and alarm[4] <= 0)
  {
    //Check to see if you can actually shoot the enemy before attacking
    //Currently scp_can_hit check in degrees of 15
    if ( scp_can_hit(range,15,xscale,15,obj_enemy,obj_block) ){
      //Create the machine gun attack
      my_attack = instance_create(x,y,obj_machine_gun_shot);
      my_attack.range = range;
      my_attack.attack = attack;
      my_attack.direction = tmp_a_dir;
      my_attack.image_angle = tmp_a_dir; 

      //Set the range on the attack
      with(my_attack){
        if range > 0 then alarm[0] = range / speed + 1 else alarm[0] = 0;
      }

      //Set the time for next attack :)
      alarm[1] = reload;
    }
    alarm[4] = 5; //Just to keep the scp_can hit from running every step
  }
}




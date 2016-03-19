
//Determine attack direction
tmp_m_dir = point_direction(x,y,mouse_x + view_xview[0],mouse_y + view_yview[0]);

//Aiming
//Up
if ( tmp_m_dir <= 135  && tmp_m_dir > 45 )
{
  tmp_a_dir = 90
}
//Down
if ( tmp_m_dir >= 225 && tmp_m_dir < 315 )
{
  tmp_a_dir = 270
}
//Left
if ( tmp_m_dir > 135  && tmp_m_dir < 225 )
{
  tmp_a_dir = 180
}
//Right
if ( tmp_m_dir <= 45 || tmp_m_dir >= 315 )
{
  tmp_a_dir = 360
}


//Attack if the reload alarm is not set and we are not moving this step
if ( !move_select  )
{
  //Charge shot
  if ( mouse_check_button(mb_left) )
  {
    attack_charge += 1;
    if attack_charge >= attack_charge_max then attack_charge = attack_charge_max;
  }

  if ( mouse_check_button_released( mb_left) )
  {
    attack_charge = 0;
  }
  
  if ( attack_charge >= attack_charge_max )
  {
    //Create the machine gun attack
    my_attack = instance_create(x,y,obj_machine_gun_shot);
    my_attack.range = range;
    my_attack.attack = attack;
    my_attack.direction = tmp_a_dir;
    my_attack.image_angle = tmp_a_dir; 
    
    attack_charge = 0;

    //Set the range on the attack
    with(my_attack)
    {
      if range > 0 then alarm[0] = range / speed + 1 else alarm[0] = 0;
    }

    //Set the time for next attack :)
    alarm[1] = reload;
  }
}




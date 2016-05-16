range = 180
if ( scp_can_hit(range,15,xscale,15,obj_enemy,obj_block) ){
  //Create the machine gun attack
  my_attack = instance_create(x,y,obj_machine_gun_shot);
  my_attack.range = range;
  my_attack.attack = 2 + attack;
  my_attack.direction = tmp_a_dir;
  my_attack.image_angle = tmp_a_dir; 
  tmp_reload = 20;
  //Set the range on the attack
  with(my_attack){
    if range > 0 then alarm[0] = range / speed + 1 else alarm[0] = 0;
  }
  alarm[1] = tmp_reload - reload;
  if alarm[1] <= 0 then alarm[1] = 1;
 
  //Attack sprite setup
  my_wand.attack_1 = 1;
  my_wand.image_index = 0;
   
}

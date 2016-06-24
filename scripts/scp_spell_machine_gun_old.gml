//Set the attack range...
range = 180;
//Set an enemy target if we have a clear line of site to the target.        
                   //range,radius,xscale,start_angle,target,block,check for closest
tmp_enemy_target = scp_can_hit(range,30,xscale,15,obj_enemy,obj_block,global.auto_target);            


//Shoot away :)         
if ( tmp_enemy_target ){
   
  //Set the xscale based on the direction to the enemy for auto targeting
  if x > tmp_enemy_target.x && global.auto_target then xscale = -1 
  if x <= tmp_enemy_target.x && global.auto_target then xscale = 1 
  
  if ( xscale == 1 ) {
    tmp_a_dir = 0;
  }
  if ( xscale == -1 ) {
    tmp_a_dir = 180;
  }

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

//Attack if the reload alarm is not set and we are not moving this step
//Also, make sure you are alive :)


//Auto target 
//Set targeting range in pixels...
tmp_look_ahead = 300;
//Set an enemy target if we have a clear line of site to the target.        
//range,radius,xscale,start_angle,target,block,check for closest
tmp_enemy_target = scp_can_hit(300,20,xscale,10,obj_enemy,obj_block,global.auto_target);            

//Pick facing direction...      
if ( tmp_enemy_target ){
  //Set the xscale based on the direction to the enemy for auto targeting
  if x > tmp_enemy_target.x && global.auto_target then xscale = -1 
  if x <= tmp_enemy_target.x && global.auto_target then xscale = 1 
}

if ( !move_select && hp > 0 &&  tmp_enemy_target ){
  //Attack if the alarm for being ready to shoot again OR being read to run can hit is ready
  if ( alarm[1] <= 0 ){
    if ( global.wand[p_index] == 0 ){
      scp_attack_normal();
    }
  }
}




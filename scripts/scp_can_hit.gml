
//Start set variables for checking if an attack would be successful
tmp_range  = argument0;
//What if the attack radius
tmp_radius = argument1;
//xcale of the character or direction facing where left = -1 and right = 1
tmp_direction = argument2;

//What is the start angle to check in?
//This is subtracted from the 
tmp_start_angle = argument3
//Object type to check for?
tmp_target = argument4;
//Blocking object
tmp_block = argument5;

//Angle to increment the radius per step
tmp_angle_increment = 15;

//Check direction based tmp_direction or xcale provided
if ( tmp_direction = 1 ) {
  tmp_cur_dir = 0 - tmp_start_angle;
  //if tmp_cur_dir < 0 then tmp_cur_dir += 360;
  
  for ( a = tmp_cur_dir; a <= tmp_radius; a += tmp_angle_increment ) {
    //Check to see if there was a collision
    tmp_target_x = x + lengthdir_x(tmp_range,a);
    tmp_target_y = y + lengthdir_y(tmp_range,a);
    //If you can hit the target and you are not blocked
    tmp_collider = collision_line(x,y,tmp_target_x,tmp_target_y,tmp_target,false,true);
    if ( tmp_collider ){
      if ( !collision_line(x,y,tmp_collider.x,tmp_collider.y,tmp_block,false,true) ){
        return 1;
      }
    }
    
    //You can create an object here to visualize where the lines of collision will check from
    //instance_create(tmp_target_x,tmp_target_y,obj_e_spark);
    
  }
  
}
else {
  tmp_cur_dir = 180 + tmp_start_angle;
  //if tmp_cur_dir > 360 then tmp_cur_dir -= 360;
  //
  for ( a = tmp_cur_dir; a >= tmp_radius; a -= tmp_angle_increment ) {
    //Check to see if there was a collision
    tmp_target_x = x + lengthdir_x(tmp_range,a);
    tmp_target_y = y + lengthdir_y(tmp_range,a);
    //If you can hit the target and you are not blocked
    tmp_collider = collision_line(x,y,tmp_target_x,tmp_target_y,tmp_target,false,true);
    if ( tmp_collider ){
      if ( !collision_line(x,y,tmp_collider.x,tmp_collider.y,tmp_block,false,true) ){
        return tmp_collider;
      }
    }
    //You can create an object here to visualize where the lines of collision will check from
    //instance_create(tmp_target_x,tmp_target_y,obj_e_spark);
  }
}




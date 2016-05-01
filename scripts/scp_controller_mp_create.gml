//Create the air blocks

//Loop through the room and place air blocks where ever the space below is unoccupied.
for ( tmp_rx = 0; tmp_rx < room_width; tmp_rx += grid_size_x )
{
  for ( tmp_ry = 0; tmp_ry < room_height; tmp_ry += grid_size_y )
  { 
    //Check center of grid one grid size below for "solid object" else mark the space as air.  
    tmp_cx = tmp_rx + grid_size_x / 2;
    tmp_cy = tmp_ry +grid_size_y +  ( grid_size_y / 2 );
    tmp_air = 1; //Air is a block that cannot be navigated - out of bounds for non fliers
    
    //If the postion is on a block or ladder
    if position_meeting( tmp_rx + 7, tmp_ry+4, obj_block_jump ) || position_meeting( tmp_rx, tmp_ry, obj_block ) || position_meeting( tmp_rx, tmp_ry, obj_block_ladder ) then tmp_air = 0;
    
    //If the postion below is a block then make it air space
    if position_meeting( tmp_cx, tmp_ry + grid_size_y, obj_block )  || position_meeting( tmp_cx, tmp_ry + grid_size_y, obj_block_ladder )  then tmp_air = 0;
    
    if tmp_air then instance_create(tmp_rx,tmp_ry,obj_block_air);
    

  }
}


//Setup the multipath grid
//No jump grid - Can walk and not jump - air and jump blocks will impede movement
global.mp_grid_no_jump = mp_grid_create(0, 0, room_width / 24, room_height /24, 24, 24);
//Normal grid - Can walk and jump - jump blocks do not impede movement
global.mp_grid = mp_grid_create(0, 0, room_width / 24, room_height /24, 24, 24);
//Grid for flying - Only blocks will impede movement
global.mp_grid_fly = mp_grid_create(0, 0, room_width / 24, room_height /24, 24, 24);

//No jump grid objects
mp_grid_add_instances(global.mp_grid_no_jump,obj_block,0);
mp_grid_add_instances(global.mp_grid_no_jump,obj_block_air,0);
mp_grid_add_instances(global.mp_grid_no_jump,obj_block_jump,0);
//Normal grid objects
mp_grid_add_instances(global.mp_grid,obj_block,0);
mp_grid_add_instances(global.mp_grid,obj_block_air,0);
//Flying grid objects
mp_grid_add_instances(global.mp_grid_fly,obj_block,0);

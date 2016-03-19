//Create the air blocks

//Loop through the room and place air blocks where ever the space below is unoccupied.
for ( tmp_rx = 0; tmp_rx < room_width; tmp_rx += grid_size_x )
{
  for ( tmp_ry = 0; tmp_ry < room_height; tmp_ry += grid_size_y )
  { 
    //Check center of grid one grid size below for "solid object" else mark the space as air.  
    tmp_cx = tmp_rx + grid_size_x / 2;
    tmp_cy = tmp_ry +grid_size_y +  ( grid_size_y / 2 );
    if ( !position_meeting( tmp_rx, tmp_ry, obj_block )  && !position_meeting( tmp_rx, tmp_ry, obj_block_ladder ) )
    {
      if ( !position_meeting( tmp_cx, tmp_cy, obj_block )  && !position_meeting( tmp_cx, tmp_cy, obj_block_ladder ) )
      {
        if ( !position_meeting( tmp_cx, tmp_ry - 2, obj_block )  && !position_meeting( tmp_cx, tmp_ry - 2, obj_block_ladder ) )
        {
          instance_create(tmp_rx,tmp_ry,obj_block_air);
        }
      }
    }
  }
}




//Setup the multipath grid
//Normal grid
global.mp_grid = mp_grid_create(0, 0, room_width / 24, room_height /24, 24, 24);
//Grid for flying
global.mp_grid_fly = mp_grid_create(0, 0, room_width / 24, room_height /24, 24, 24);
//Normal grid objects
mp_grid_add_instances(global.mp_grid,obj_block,0);
mp_grid_add_instances(global.mp_grid,obj_block_air,0);
//Flying grid objects
mp_grid_add_instances(global.mp_grid_fly,obj_block,0);

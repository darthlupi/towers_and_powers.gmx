//Create random level

blocks_x = floor(room_width / grid_size_x);
blocks_y = floor( (room_height - 48 ) / grid_size_y);
//Place blocks everywhere :)
for ( tmp_rx = 0; tmp_rx < room_width; tmp_rx += grid_size_x )
{
  for ( tmp_ry = 0; tmp_ry < room_height; tmp_ry += grid_size_y )
  { 
    instance_create(tmp_rx,tmp_ry,obj_block);

  }
}

mv_x = floor(random(blocks_x)) * grid_size_x;
mv_y = floor(random(blocks_y)) * grid_size_y;

instance_create(mv_x, mv_y + 12, obj_player_1);

mv_x -= grid_size_x*2;
for ( mv=0;mv<20;mv+=1){
  tmp = instance_position(mv_x,mv_y,obj_block);
  if ( tmp ){
    with(tmp){instance_destroy();}
  }
  mv_x += grid_size_x;
}


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


repeat(5)
{
mv_x = floor(random(blocks_x)) * grid_size_x;
mv_y = floor(random(blocks_y)) * grid_size_y;
//Make sure we are to the right of the bor
if mv_x <= 0 then mv_x += grid_size_x;
//x_start = mv_x

//mv_x = x_start;

//Clear a space
tmp = instance_position(mv_x,mv_y,obj_block);
if ( tmp ){
  with(tmp){instance_destroy();}
}

//Dig down making ladders
//Do not dig lower than the hud ( -2 ) relative to the starting point ( mv_y / grid_size_y )
screen_bottom = blocks_y - 2 -  ( mv_y / grid_size_y );
//Going down :)
for ( mv=0;mv < screen_bottom;mv+=1){  
  mv_y += grid_size_y;
  //Clear a space
  
  //We need to put a check here that decides if we hit a nice blank or another ladder
  //that we can stop going down :)
  
  tmp = instance_position(mv_x,mv_y,obj_block);
  if ( tmp ){
    with(tmp){instance_destroy();}
  }
  //Vertical movement creates ladders :_
  instance_create(mv_x,mv_y,obj_block_ladder)
  
  //Chance of creating a hort tunnel
  if ( random(10) > 6 ){
    //How many blocks to remove
    x_qty = floor(random(blocks_x) );
    //Where to start removing 
    x_left_start = floor(random(x_qty) );
    //x_start = grid_size_x * (  ( mv_x / grid_size_x ) - x_left_start + floor(random(x_qty) ) )
    //Clear blocks -- horizontally
    for (cb=0;cb<x_qty;cb+=1){
      //Clear a space
        cx = ( mv_x / grid_size_x ) - x_left_start + cb;
        //Don't delete the far left block - we needs da borda
        if cx <= 1 then cx = 1;
        if cx > floor(room_width / grid_size_x) - 1 then cx = floor(room_width / grid_size_x) - 1;
        tmp = instance_position(cx*grid_size_x,mv_y,obj_block);
        if ( tmp ){
          with(tmp){instance_destroy();}
        }  
    }
  }

}

//mv_x = x_start;

screen_top = -( mv_y / grid_size_y ) + 2;
//Going up :)
for ( mv=0;mv > screen_top;mv-=1){  
  mv_y -= grid_size_y;
  //Clear a space
  
  //We need to put a check here that decides if we hit a nice blank or another ladder
  //that we can stop going down :)

  tmp = instance_position(mv_x,mv_y,obj_block);
  if ( tmp ){
    with(tmp){instance_destroy();}
  }
  //Vertical movement creates ladders :_
  instance_create(mv_x,mv_y,obj_block_ladder)
  
  //Chance of creating a hort tunnel
  if ( random(10) > 6 ){
    //How many blocks to remove
    x_qty = floor(random(blocks_x) );
    //Where to start removing 
    x_left_start = floor(random(x_qty) );
    //x_start = grid_size_x * (  ( mv_x / grid_size_x ) - x_left_start + floor(random(x_qty) ) )
    //Clear blocks -- horizontally
    for (cb=0;cb<x_qty;cb+=1){
      //Clear a space
        cx = ( mv_x / grid_size_x ) - x_left_start + cb;
        //Don't delete the far left block - we needs da borda
        if cx <= 1 then cx = 1;
        if cx > floor(room_width / grid_size_x) - 1 then cx = floor(room_width / grid_size_x) -1;
        tmp = instance_position(cx*grid_size_x,mv_y,obj_block);
        if ( tmp ){
          with(tmp){instance_destroy();}
        }  
    }
  }

}

}

//Create the player :)
instance_create(mv_x+6, mv_y + 12, obj_player_1);


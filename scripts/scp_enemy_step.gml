tmp_target = obj_player;


//Set depth
depth = -y;


//Basic movement using the multipathing examples
if ( random(100)> 90  && instance_exists(obj_player) && gravity == 0  )
{
    target_x = obj_player.x;
    target_y = obj_player.y;
    if flying = 1 then my_grid = global.mp_grid_fly else my_grid = global.mp_grid;
    tmp_path_results = mp_grid_path(my_grid, my_path, x, y, target_x, target_y, false);
    if ( tmp_path_results )
    {
      path_start(my_path,move_speed,0,0);
    }
}

//Get the image_xscale
if ( direction < 90 || direction > 270 )
{
  xscale = 1
}
else if ( direction > 90 && direction < 270 )
{
  xscale = -1;
}

//Jumping or falling
scp_enemy_jump_fall()
//Sprite selection
scp_enemy_sprite();


///////////////////////
//Kill the enemy if...
///////////////////////

//Off screen left
if x < view_xview[0] -sprite_width and hspeed < 0 then instance_destroy();
//Off screen right
if x > view_xview[0] + view_wview[0] and hspeed > 0 then instance_destroy();
//Out of hit points
if hp <= 0 then instance_destroy();

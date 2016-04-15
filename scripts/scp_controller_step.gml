if ( keyboard_check_pressed(ord('R') ) )
{
    game_restart();
}

//If a coin was collected
//do a little effect for the text for score:)
if ( alarm[1] )
{
    xscale = 1.05;
    yscale = 1.05;
}
else
{
    xscale = 1;
    yscale = 1;
}

//Allow the mouse to move in a grid
scp_controller_grid_mouse();

//If the selected player is no more then we should deselect them...
if ( !instance_exists( player_id ) )
{
  obj_controller.player_selected = 0;
  //Set the icon for the mouse
  obj_controller.my_selection_thingy.state = 0;  
}


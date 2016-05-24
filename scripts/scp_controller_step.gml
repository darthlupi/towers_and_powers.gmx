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

//Switch players keyboard style 

if ( keyboard_check_pressed(ord('Z') ) )
{
    scp_button_player_1();
}
if ( keyboard_check_pressed(ord('X') ) )
{
    scp_button_player_2();
}
if ( keyboard_check_pressed(ord('C') ) )
{
    scp_button_player_3();
}

//Trigger actions
//Jump and stuff
if ( keyboard_check_pressed(ord('S') ) || mouse_check_button_pressed(mb_right)  ){
    scp_action_button_script();
}
//Spell selected
if ( keyboard_check_pressed(ord('D') ) )
{
    scp_button_player_3();
}



//If the selected player is no more then we should deselect them...
if ( !instance_exists( player_id ) )
{
  obj_controller.player_selected = 0;
  //Set the icon for the mouse
  obj_controller.my_selection_thingy.state = 0;  
}

//Game over
if ( !instance_exists(obj_player_parent) )
{
    if alarm[3] <= 0 alarm[3] = 30;

}

if ( keyboard_check_pressed(ord('N') ) )
{
    instance_create(x,y,obj_transition_blocks);
}


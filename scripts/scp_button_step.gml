
if ( scp_mouse_over_check(self) )
{
    if ( mouse_check_button_pressed(mb_left) )
    {
        script_execute(button_script);
    }    
    image_speed = 0.2;
}
else
{
    image_index = 0;
    image_speed = 0;
}

if ( selected = 1 )
{
    image_index = 1;
}


if ( scp_mouse_over_check(self) )
{
    if ( mouse_check_button(mb_left) )
    {
        script_execute(button_script);
    }    
    selected = 1;
}
else 
{
  selected = 0;
}


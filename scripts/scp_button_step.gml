
if ( scp_mouse_over_check(self) )
{
    if ( mouse_check_button(mb_left) )
    {
        script_execute(button_script);
    }  
    //Only trigger the POP up alarm if moused over for the first time  
    if !selected && !alarm[1] then alarm[1] = 10;
    
    selected = 1;
}
else 
{
  selected = 0;
}


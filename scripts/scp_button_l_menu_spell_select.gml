//If spell is unlocked
if ( global.spell_level[spell] ){
  //Only activate this button on press
  if ( mouse_check_button_pressed(mb_left) ) {

    //Set the spell selected for the player and for display
    global.spell_selected[global.p_selected_last] = spell;
    obj_l_menu_controller.spell = spell;
    
    //Set player 1's spell if he is selected
    if ( global.p_selected_last == 0  ){
      tmp_selected_object = obj_button_l_menu_spell_s_p1;
    }
    
    //Set player 2's spell if she is selected
    if ( global.p_selected_last == 1  ){
      tmp_selected_object = obj_button_l_menu_spell_s_p2;
    }
    
    //Set player 3's spell if he is selected
    if ( global.p_selected_last == 2  ){
      tmp_selected_object = obj_button_l_menu_spell_s_p3;
    }
    
    tmp_selected_object.spell = spell;
    tmp_selected_object.alarm[0] = 1;
    tmp_selected_object.alarm[2] = 10; //Rotate the sprite
    tmp_selected_object.old_sprite = tmp_selected_object.sprite_index;
    tmp_selected_object.new_sprite = global.spell_sprite[spell];
  } 
}
else
{
  //Set the information about the spell so a player can make an informed decision
  //when unlocking a spell.
  if ( mouse_check_button_pressed(mb_left) ) {
    obj_l_menu_controller.spell = spell;
    
  }


}
  

//Only active this button on press
if ( mouse_check_button_pressed(mb_left) ) {
  //Select player and deactivate prior selection if over the count
  //if ( global.p_selected[p_index] == 0){
  //  global.p_selected[p_index] = 1;
  //}
  //else{
  //  global.p_selected[p_index] = 0;
  //}
  //tmp_player_count = global.p_selected[0] + global.p_selected[1] + global.p_selected[2];
  //Too many people selected deactive the last one 
  //if ( tmp_player_count > 2 ){
  //  global.p_selected[global.p_selected_last] = 0;
  //}
  global.p_selected_last = p_index;
} 



  

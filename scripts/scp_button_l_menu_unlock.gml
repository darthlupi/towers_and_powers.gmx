//If spell is unlocked
//Only activate this button on press
if ( mouse_check_button_pressed(mb_left) && global.points - global.spell_cost[spell] >= 0 ) {
  //Increase level
  global.spell_level[spell] = 1;
  //Reduce available money
  global.points -= global.spell_cost[spell];
} 
else if ( alarm[2] <= 0 )
{
  alarm[2] = 5;
  my_text = instance_create(x,y,obj_damage_done);
  my_text.font = global.font_score;
  my_text.dmg = "YOU NEED MORE MONEY!"
}

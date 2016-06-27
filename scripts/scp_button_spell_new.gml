if ( instance_exists(player_id) && global.spell_ammo[spell_selected] )
{
    //Setup temp variables for the player
    player_id.tmp_spell_to_cast = spell_script;
    player_id.tmp_which_alarm = which_alarm;
    player_id.tmp_spell_selected = spell_selected;
    //Trigger the spell if the alarm for the spell is ready :)
    with( player_id ){
        if ( alarm[tmp_which_alarm] <= 0 ){
          //Reduce ammo count
          global.spell_ammo[tmp_spell_selected] -= 1;
          script_execute(tmp_spell_to_cast);
          if tmp_reload <= 0 then tmp_reload = 1;
          alarm[tmp_which_alarm] = tmp_reload;
        }
    }
}

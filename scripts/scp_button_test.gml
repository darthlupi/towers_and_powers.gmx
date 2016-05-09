audio_play_sound(snd_game_over,1,false);

if ( instance_exists(obj_player_1) )
{
    with( obj_player_1 ){
        scp_spell_sprout();
    }
}

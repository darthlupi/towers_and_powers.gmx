image_angle = 0 + hspeed;

//Select sprites
sprite_index = scp_player_sprite_select();


//KO if out of hp
if ( hp <= 0 )
{
    hp = 0;
    tmp_ko = instance_create(x,y,obj_player_ko);
    tmp_ko.sprite_index = sprite_index;
    tmp_ko.depth = depth;
    instance_destroy();
}   

//Movement code
scp_player_mp_move();

//Shooting 
scp_player_attack();

//Set depth
depth = -y;

//Set scale
if mouse_x >= x then xscale = 1 else xscale = -1;

//Jumping or falling
scp_player_jump_fall()



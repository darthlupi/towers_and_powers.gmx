image_angle = 0 + hspeed;

//Select sprites
sprite_index = scp_player_sprite_select();


//KO if out of hp
if ( hp <= 0 )
{
    hp = 0;
    scp_create_chunks(sprite_index,2,x - abs(sprite_xoffset),y - abs(sprite_yoffset),bbox_bottom,xscale,yscale,0);
    instance_destroy();
}   

//Movement code
scp_player_mp_move();

//Shooting 
scp_player_attack();

//Set depth
depth = -y;



//Jumping or falling
//Trying to jump
if ( keyboard_check_pressed(ord('X') ) || mouse_check_button_pressed(mb_right) ) && obj_controller.player_id == id then should_jump = 1;
scp_jump_fall();


//Collisions
scp_platform_collision();

//Level up
scp_player_level_up();


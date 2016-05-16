
if ( hp <= 0 )
{
    scp_create_chunks(sprite_index,8,x - abs(sprite_xoffset),y - abs(sprite_yoffset),bbox_bottom,xscale,yscale,0);
    //scp_create_chunks(sprite_index,8,x,y,bbox_bottom,0);
    tmp_coin = instance_create(x,bbox_bottom - 12,obj_coin);
    tmp_coin.value = gold_value;
    
    //Give exp rewards to all players
    if ( instance_exists(obj_player_1) ){
      global.exp_points[obj_player_1.p_index] += exp_value;
    }
    if ( instance_exists(obj_player_2) ){
      global.exp_points[obj_player_2.p_index] += exp_value;
    }
    if ( instance_exists(obj_player_3) ){
      global.exp_points[obj_player_3.p_index] += exp_value;
    }
}

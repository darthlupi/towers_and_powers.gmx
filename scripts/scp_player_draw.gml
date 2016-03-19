color = c_white;
tmp_rand = 0;
//If hurt
if (alarm[0])
{
    tmp_rand = -2 + random(4);
}

//Only used for multipathing
//draw_path(my_path,x,y,true);

draw_set_alpha(path_alpha);
for ( i = 0; i<=1;i+= 10/path_ln )
{
  tmp_x = path_get_x(my_path, i);
  tmp_y = path_get_y(my_path, i);
  draw_circle(tmp_x,tmp_y,2,false);
}
draw_set_alpha(1);

draw_sprite_ext(sprite_index,-1,x + tmp_rand,y + tmp_rand,xscale,yscale,image_angle,color,image_alpha);


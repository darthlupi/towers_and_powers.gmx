color = c_white;
//Wiggle a bit if hurt
tmp_rand = 0;
//If hurt
if (alarm[0])
{
    tmp_rand = -2 + random(4);
}

//Only used for multipathing
//draw_path(my_path,x,y,true);

//draw_text(x,y-25,direction);


//Draw the path line
draw_set_alpha(path_alpha);
for ( i = 0; i<=1;i+= 10/path_ln ){
  tmp_x = path_get_x(my_path, i);
  tmp_y = path_get_y(my_path, i);
  draw_circle(tmp_x,tmp_y,2,false);
}
draw_set_alpha(1);

//Draw level up power!!!!!
if ( alarm[5] ){
  repeat(45){
     draw_sprite_ext(spr_effect_level_power,random(4),x,y,random(alarm[5] * 0.1),random(1),random(360),color,random(1));

  }
}

//Draw target x and y for moving :)
//draw_sprite(spr_down_arrow,-1,target_x,target_y );


//Draw the actual sprite.
draw_sprite_ext(sprite_index,-1,x + tmp_rand,y + tmp_rand,xscale,yscale,image_angle,color,image_alpha);

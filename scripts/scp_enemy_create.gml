image_speed = 0.25;

//Stats

//Stats
hp_max = 10;
hp = hp_max;
reload = 20;
attack = 1;
armor = 1;
//Point value 
gold_value = 100;
exp_value = 40;

//Only used for multipathmovement :)
my_path = path_add();
//These will be used later once a target is chosen for the enemy.
//Set in scp_enemy_mp_move.
target_x = x;
target_y = y;

//Move speed 
move_speed= 0.75;

//Sprite selection
sprite_climb = spr_devil_dog_c;
sprite_walk = spr_devil_dog_w;
sprite_jump = spr_devil_dog_j;

//image_xscale will scale the bbox breaking collisions
xscale = 1;
yscale = 1;

//Status effects
knocked_back = 0;
//How long for flying enemies to recover from knock back
knocked_back_delay = 20;
//Give exp or not when killed...
give_exp = true;

//Jumping stuff
jump = 0;
jump_max = 2; //Vspeed from jumping
gravity = 0;
should_jump = 0; //Should we trigger the jump now?
jump_speed = 3;
jump_path = 0; //Should we continue the prior path on landing  - always 0 for enemies
//Which grid to use - normal, no jumping or flying
flying = 0;
jumping = 0;

image_speed = 0.25;
//Default image speed in case we need to change it for stuff...
start_image_speed = image_speed;

//Stats

//Stats
hp_max = 10;
hp = hp_max;
reload = 120;
attack = 1;
armor = 1;
//Attack range
range = 120;
//Point value 
gold_value = 100;
exp_value = 59;

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
sprite_attack = spr_devil_dog_j;


//Attacking stuff
attacking = 0;


//image_xscale will scale the bbox breaking collisions
xscale = 1;
yscale = 1;
//Mostly used for turrets ( only used for turrets so far )
target_xscale = xscale;

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

//////////////////////
//Enemy behaviors
/////////////////////
//These enemies can move anywhere there is a ladder or air block.
flying = 0;
//This enemy has the ability to jump over obstacles and holes.
//It also uses the grid for jumping units.
jumping = 0;
//Is this a turret enemy?
//These enemies remain stationary
turret = 0;
//Ranged types will stop and fire a long range attack at the player
ranged = 0;
//Hunters find the closest player and pursue!
hunter = 1;




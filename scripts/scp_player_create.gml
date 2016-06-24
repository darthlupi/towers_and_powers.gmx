move_speed = 2;
image_speed = 0.25;

//Stats
hp_max = global.hp_max[p_index] + global.item_hp_max[p_index];
reload = global.reload[p_index] + global.item_reload[p_index];
attack = global.attack[p_index] + global.item_attack[p_index];
armor = global.armor[p_index] + global.item_armor[p_index];
regen = global.regen[p_index] + global.item_regen[p_index];

hp = hp_max;

//Leveling
exp_next = scp_player_next_level(); 


//Trigger the attack
alarm[1] = reload;
//Regen triger
regen_timer = 200;
alarm[2] += regen_timer;

//Attacking
attack_charge = 0;
attack_charge_max = 1;

//Movement target for mouse and grid based movement
target_x = x;
target_y = y;


//How fast you move
move_speed = 3;
jump_speed = 3;

//How high to jump
jump_max = 2;

//Flying or not 
flying = 0;
//Jumping stuff
jump = 0;
should_jump = 0;
manual_jump = 0; //Did we press a button to jump?
//This should only ever be set if colliding with a jump block.
//This will allow the path to be reset to the last target after landing from a jump.
jump_path = 0;
//Last jump block you collided with.   You should not jump across the same block twice :)
last_jump_block = -1;
gravity = 0;

//Status effects
knocked_back = 0;

//Only used for multipathmovement :)
my_path = path_add();
//Found a good path
good_path_found = 0;
//Check if moving by checking the path index :)
moving = path_index;
//If player is selected to move
move_select = 0;

//Set path and the default alpha value for drawing the path
path_ln = path_get_length(my_path);
path_ln = 1;  //Doing this negate possible rediculously long for loop in draw event
path_alpha = 1;

//Sprites stuff
player_offset_x = 0;
player_offset_y = 0;

sprite_walk = spr_player_1_w;
sprite_climb = spr_player_1_c;
sprite_climb_still = spr_player_1_cs;
sprite_stand_still = spr_player_1_s;
sprite_jump_u = spr_player_1_j_u;
sprite_jump_d = spr_player_1_j_d;

//Create the wand
my_wand = instance_create(x,y,obj_player_1_wand);




//image_xscale will scale the bbox breaking collisions
xscale = 1;
yscale = 1;


//Create the camera
my_camera = instance_create(x,y,obj_camera);

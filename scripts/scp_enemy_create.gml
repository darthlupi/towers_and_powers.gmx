image_speed = 0.25;

//Stats

//Stats
hp_max = 15;
hp = hp_max;
reload = 20;
attack = 2;
armor = 1;
//Point value 
value = 100;

//Only used for multipathmovement :)
my_path = path_add();

//Move speed 
move_speed= 0.75;

//Sprite selection
sprite_climb = spr_devil_dog_c;
sprite_walk = spr_devil_dog_w;
sprite_jump = spr_devil_dog_j;

//image_xscale will scale the bbox breaking collisions
xscale = 1;
yscale = 1;

//Jumping stuff
jump = 0;
jump_max = 24; //How many steps you stay air born when jumping :)
gravity = 0;

//Which grid to use - normal or flying
flying = 0;

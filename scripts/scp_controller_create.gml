game_state = 0;

my_selection_thingy = instance_create(mouse_x,mouse_y,obj_selection_thingy);

//Set the key stone counter to 0 :)
global.key_stone = 0;

/*
//Start position of the player
start_x = 96;
start_y = 96;

//Create the player object
my_player = instance_create(start_x,start_y,obj_player);
*/

//Which player was selected
player_selected = 0;
player_id = -1;

//Alarm 2 is for auto selecting a player
alarm[2] = 8;

//Create bottons
my_button_1 = instance_create(x+213,y+8,obj_button_item);
my_button_2 = instance_create(x+213 + 32 + 4,y+8,obj_button_action);
my_button_3 = instance_create(x+213 + 64 + 8,y+8,obj_button_p1);
my_button_4 = instance_create(x+213 + 96 + 12,y+8,obj_button_p2);
my_button_5 = instance_create(x+213 + 128 + 12,y+8,obj_button_p3);
//Text variables
xscale=1;
yscale=1;
angle =0;

//For leveling stuff
lvl_frame = 0;


//Prepare the grid movement
scp_controller_grid_create();

//Random level generation
if room_get_name(room) == "rm_random" then scp_controller_random_level();

//Prepare multipath
scp_controller_mp_create();
//Triggers the above script again.  Needed for the random level stuff.
//Apparently the objects deleted in random level are not deleted until later.
alarm[0] = 1; 

//Create the go graphic
instance_create(room_width/2,-40,obj_effect_go);

//Do the level transition in!!!
my_t = instance_create(x,y,obj_transition_blocks);
my_t.tmp_grow = 11;
my_t.alpha = 1.35;
my_t.level_start = 1;

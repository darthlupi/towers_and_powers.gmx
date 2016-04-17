game_state = 0;

my_selection_thingy = instance_create(mouse_x,mouse_y,obj_selection_thingy);


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

//Create bottons
my_button_1 = instance_create(x+213,y+8,obj_button_action);
my_button_2 = instance_create(x+213 + 32 + 4,y+8,obj_button_item);
my_button_3 = instance_create(x+213 + 64 + 8,y+8,obj_button_p1);
my_button_4 = instance_create(x+213 + 96 + 12,y+8,obj_button_p2);
my_button_5 = instance_create(x+213 + 128 + 12,y+8,obj_button_p3);
//Text variables
xscale=1;
yscale=1;
angle =0;

//Prepare the grid movement
scp_controller_grid_create();
//Prepare multipath
scp_controller_mp_create();

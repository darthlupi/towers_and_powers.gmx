//Reset the displayas it fixes interpolation issues with scaling etc
display_reset(0,false);

//Setup screen borders
global.bottom_border = room_height;
global.top_border = 20;
global.left_border = 0;
global.right_border = 0;


//Array for setup screen and leveling up
global.setup_array[0] = "The main character"; //Description of unit
global.setup_array[1] = 10; //Current Level
global.setup_array[2] = 200; //Level Up Cost

//Stats starting
global.hp_max[0] = 1;
global.reload[0] = 15;
global.attack[0] = 10;
global.armor[0] = 1;
global.range[0] = 180;
global.regen[0] = 0;
global.mana[0] = 10;
global.mana_regen[1] = 1;
//Stats current level
global.hp_max[1] = 1;
global.reload[1] = 1;
global.attack[1] = 1;
global.armor[1] = 1;
global.range[1] = 1;
global.regen[1] = 0;
global.mana[1] = 1;
global.mana_regen[1] = 1;



//Items
global.item_lvl[0] = 1;
global.item_lvl[0] = 1;
global.item_lvl[0] = 1;
global.item_lvl[0] = 1;

//Fonts
global.font_blue = font_add_sprite(spr_font_blue,ord('!'),true,1);
global.font_score = font_add_sprite(spr_font_score,ord('!'),true,1);
global.font_white = font_add_sprite(spr_font_white,ord('!'),true,1);
global.font_red = font_add_sprite(spr_font_red,ord('!'),true,1);
global.font_press_start = font_add_sprite(spr_font_press_start,ord('!'),true,1);

//Points
global.points = 0;

//Which spell is selected
global.spell = 0;


//Tilesets 
global.tileset = bg_tiles;

//Start the game
room_goto_next();

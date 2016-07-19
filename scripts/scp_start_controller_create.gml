//Reset the displayas it fixes interpolation issues with scaling etc
display_reset(0,false);


//Do players auto target?
global.auto_target = true;

//Setup screen borders
global.bottom_border = room_height;
global.top_border = 20;
global.left_border = 0;
global.right_border = 0;

//Make level for players allowed
global.level_max = 12;

//////////////////////
//Player 1
//Natural Stats
global.hp_max[0] = 6; //Starting hitpoints
global.reload[0] = 2; //Reload bonus
global.armor[0] = 0; //Armor bonus
global.attack[0] = 0; //Attack Bonus
global.regen[0] = 0; //Regen bonus
global.wand[0] = 0;  //Which wand is equiped - determines default projectile
//Leveling
global.level[0] = 1;
global.exp_points[0] = 0;
global.level_points[0] = 1;
//Gifted by items
global.item_hp_max[0] = 0; //Starting hitpoints
global.item_reload[0] = 0; //Reload bonus
global.item_armor[0] = 0; //Armor bonus
global.item_attack[0] = 0; //Attack Bonus
global.item_regen[0] = 0; //Regen bonus
global.action[0] = 0; //Which action is equiped

//////////////////////
//Player 2
//Natural Stats
global.hp_max[1] = 2; //Starting hitpoints
global.reload[1] = 0; //Reload bonus
global.armor[1] = 0; //Armor bonus
global.attack[1] = 0; //Attack Bonus
global.regen[1] = 0; //Regen bonus
global.wand[1] = 0;  //Which wand is equiped - determines default projectile
//Leveling
global.level[1] = 1;
global.exp_points[1] = 0;
global.level_points[1] = 1;
//Gifted by items
global.item_hp_max[1] = 1; //Starting hitpoints
global.item_reload[1] = 0; //Reload bonus
global.item_armor[1] = 0; //Armor bonus
global.item_attack[1] = 0; //Attack Bonus
global.item_regen[1] = 0; //Regen bonus
global.action[1] = 0; //Which action is equiped


//////////////////////
//Player 3
//Natural Stats
global.hp_max[2] = 2; //Starting hitpoints
global.reload[2] = 0; //Reload bonus
global.armor[2] = 0; //Armor bonus
global.attack[2] = 0; //Attack Bonus
global.regen[2] = 0; //Regen bonus
global.wand[2] = 0;  //Which wand is equiped - determines default projectile
//Leveling
global.level[2] = 1;
global.exp_points[2] = 0;
global.level_points[2] = 1;
//Gifted by items
global.item_hp_max[2] = 2; //Starting hitpoints
global.item_reload[2] = 0; //Reload bonus
global.item_armor[2] = 0; //Armor bonus
global.item_attack[2] = 0; //Attack Bonus
global.item_regen[2] = 0; //Regen bonus
global.action[2] = 0; //Which action is equiped


//Spells and their stats

//Fire sprouts
global.spell_level[0] = 0; 
global.spell_max_ammo[0] = 60;
//Global ammo so that it can be carried over between stages.
global.spell_ammo[0] = global.spell_max_ammo[0]; 
global.spell_ammo_per_level[0] = 5;
global.spell_reload[0] = 80;
global.spell_script[0] = scp_spell_sprout;
global.spell_sprite[0] = spr_button_spell_sprout;

//Machine Gun
global.spell_level[1] = 0; 
global.spell_max_ammo[1] = 120;
//Global ammo so that it can be carried over between stages.
global.spell_ammo[1] = global.spell_max_ammo[1];
global.spell_ammo_per_level[1] = 10;
global.spell_reload[1] = 20;
global.spell_script[1] = scp_spell_machine_gun;
global.spell_sprite[1] = spr_button_spell_m_gun;

//Water Slash
global.spell_level[2] = 0; 
global.spell_max_ammo[2] = 120;
//Global ammo so that it can be carried over between stages.
global.spell_ammo[2] = global.spell_max_ammo[1];
global.spell_ammo_per_level[2] = 10;
global.spell_reload[2] = 20;
global.spell_script[2] = scp_spell_water_slash;
global.spell_sprite[2] = spr_button_spell_sprout;

//Roller
global.spell_level[3] = 0; 
global.spell_max_ammo[3] = 120;
//Global ammo so that it can be carried over between stages.
global.spell_ammo[3] = global.spell_max_ammo[3];
global.spell_ammo_per_level[3] = 10;
global.spell_reload[3] = 20;
global.spell_script[3] = scp_spell_roller;
global.spell_sprite[3] = spr_button_spell_roller;

//Fire beam
global.spell_level[4] = 0; 
global.spell_max_ammo[4] = 120;
//Global ammo so that it can be carried over between stages.
global.spell_ammo[4] = global.spell_max_ammo[4];
global.spell_ammo_per_level[4] = 10;
global.spell_reload[4] = 20;
global.spell_script[4] = scp_spell_beam;
global.spell_sprite[4] = spr_button_spell_beam;

//Multi Shot
global.spell_level[5] = 0; 
global.spell_max_ammo[5] = 120;
//Global ammo so that it can be carried over between stages.
global.spell_ammo[5] = global.spell_max_ammo[5];
global.spell_ammo_per_level[5] = 10;
global.spell_reload[5] = 20;
global.spell_script[5] = scp_spell_multi;
global.spell_sprite[5] = spr_button_spell_sprout;

//Ice Spike
global.spell_level[6] = 0; 
global.spell_max_ammo[6] = 120;
//Global ammo so that it can be carried over between stages.
global.spell_ammo[6] = global.spell_max_ammo[6];
global.spell_ammo_per_level[6] = 10;
global.spell_reload[6] = 20;
global.spell_script[6] = scp_spell_ice_spike;
global.spell_sprite[6] = spr_button_spell_sprout;


//Ice Maker
global.spell_level[7] = 0; 
global.spell_max_ammo[7] = 120;
//Global ammo so that it can be carried over between stages.
global.spell_ammo[7] = global.spell_max_ammo[7];
global.spell_ammo_per_level[7] = 10;
global.spell_reload[7] = 20;
global.spell_script[7] = scp_spell_ice_maker;
global.spell_sprite[7] = spr_button_spell_sprout;

//Fireball
global.spell_level[8] = 0; 
global.spell_max_ammo[8] = 120;
//Global ammo so that it can be carried over between stages.
global.spell_ammo[8] = global.spell_max_ammo[8];
global.spell_ammo_per_level[8] = 10;
global.spell_reload[8] = 20;
global.spell_script[8] = scp_spell_fireball;
global.spell_sprite[8] = spr_button_spell_sprout;

//Prox Mime
global.spell_level[9] = 0; 
global.spell_max_ammo[9] = 120;
//Global ammo so that it can be carried over between stages.
global.spell_ammo[9] = global.spell_max_ammo[9];
global.spell_ammo_per_level[9] = 10;
global.spell_reload[9] = 20;
global.spell_script[9] = scp_spell_prox_mime;
global.spell_sprite[9] = spr_button_spell_sprout;

//Which spell is selected for player 1
global.spell_selected[0] = 4; 
//Which spell is selected for player 2
global.spell_selected[1] = 6; 
//Which spell is selected for player 3
global.spell_selected[2] = 8; 




//For single player can be deleted if going multi unit...
//Which spell is selected in slot 1
//global.spell_selected[0] = 0; 
//Which spell is selected in slot 2
//global.spell_selected[1] = 1; 
//Which spell is selected in slot 3
//global.spell_selected[2] = 1; 
//Which spell is selected in slot 4
//global.spell_selected[3] = 0; 

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
global.font_text = font_add_sprite(spr_font_text,ord('!'),true,1);

//Points
global.points = 0;

//Which spell is selected
global.spell = 0;


//Tilesets 
global.tileset = bg_tiles;

//Start the game
room_goto_next();

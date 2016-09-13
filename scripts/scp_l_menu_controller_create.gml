//The spell to describe or upgrade is the spell assigned to the last player spelected.
spell = global.spell_selected[global.p_selected_last];

//Set the text for the spell selected
spell_name = global.spell_name[spell];
spell_description = scp_word_wrap(global.spell_desc[spell],40);

//Set the spell status
level = global.spell_level[spell];
next_level = global.spell_next_level[spell] ;
spell_exp = global.spell_exp[spell]; 
spell_power = string( global.spell_attack[spell] + ( global.spell_attack_per_level[spell] * level )  );
spell_quantity = string( global.spell_max_ammo[spell] + ( global.spell_ammo_per_level[spell] * level )  );
spell_reload = string( global.spell_reload[spell] + ( global.spell_reload_per_level[spell] * level )  );
spell_range = global.spell_range[spell];

//For the animated spell level up image
spell_lvl_frame = 0;





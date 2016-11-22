
if ( hp <= 0  )
{
    tmp_coin = instance_create(x,bbox_bottom - 12,obj_coin);
    tmp_coin.value = gold_value;
    //SHAKE that thang!
    instance_create(x,y,obj_screen_shake);
    
    //Give exp rewards to all players
    if ( give_exp ){

      //Create the exp crystals in chunks of first 10 then 5 and finally 1.
      repeat(exp_value div 10){
        tmp_exp = instance_create(x,y,obj_exp_crystal);
        tmp_exp.exp_value = 10;
      }
      //Reduce give_exp to the remainder of dividing by 10
      exp_value = exp_value mod 10;
      repeat(exp_value div 5){
        tmp_exp = instance_create(x,y,obj_exp_crystal);
        tmp_exp.exp_value = 5;
      }
      //Reduce give_exp to the remainder of dividing by 5
      exp_value = exp_value mod 5;
      repeat(exp_value){
        tmp_exp = instance_create(x,y,obj_exp_crystal);
        tmp_exp.exp_value = 1;
      }  
    }

}

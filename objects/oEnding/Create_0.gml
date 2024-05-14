/// @descr
gunsprite = layer_sprite_get_id("TitleAssets","gGun");
if (global.hasgun == true) && (global.kills > 0)
{
	endtext[0] = "That  was  a  crazy  walk  in  the  park!";
	endtext[1] = "You  killed" + string(global.kills) + "  Zombies";
	endtext[2] = "Good  job!";
	endtext[3] = "I  mean  we  might  have  been  able  to  find  a  cure";
	endtext[4] = "You  murdered  them  in  cold  blood!";
	endtext[5] = "I  hope  you  sleep  well  at  night";
	endtext[6] = "You  monster!";
}
else
{
	layer_sprite_destroy(gunsprite);
	endtext[0] = "You  really  just  walked  by  all  of  those  Zombies";
	endtext[1] = "You  have  amazing  self  control";
	endtext[2] = "I  wish  I  was  sexy  and  cool  like  you";
	endtext[3] = "Brave  too";
	endtext[4] = "I  think  you  are  my  new  hero";
	endtext[5] = "Thanks  for  playing!";
}

spd = 0.2
letters = 0;
currentline = 0;
length = string_length(endtext[currentline]);
text = "";

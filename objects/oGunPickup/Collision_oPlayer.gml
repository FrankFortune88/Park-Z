/// @descr Equip Gun

global.hasgun = true;
instance_create_layer(oPlayer.x,oPlayer.y,"Gun",oGun);
audio_play_sound(snGunReady,15,false);
instance_destroy();
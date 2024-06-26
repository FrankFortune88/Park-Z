//variables (|| or "or" to have multiple buttons

if (hascontrol)
{
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);

	if (key_left) || (key_right) || (key_jump)
	{
		controller = 0;	
	}

	if(abs(gamepad_axis_value(0,gp_axislh))  > 0.2)
	{
		key_left = abs(min(gamepade_axis_value(0,gp_axislh),0));	
		key_right = max(gamepade_axis_value(0,gp_axislh),0);
		controller = 1;
	}

	if (gamepad_button_check_pressed(0,gp_face1))
	{
		key_jump = 1;
		controller = 1;
	}
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}

//Temp Variable - allows player to move and stop if both keys are pressed
var move = key_right - key_left

//horizontal movement
hsp = (move * walksp) + gunkickx;
gunkickx = 0;

//vertical movement
vsp = (vsp + grv) + gunkicky;
gunkicky = 0;

//jumping
canjump -=1;
if (canjump > 0) && (key_jump)
{
	vsp = -7;
	canjump = 0;


}

//horizontal collision - place_meeting checks collision 
//Sign returns variable whether positive or negative
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

//vertical collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

//Animation
//Jumping and Falling animation
if(!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;	
}
else
{
	canjump = 10;
	if(sprite_index == sPlayerA) 
	{
	audio_sound_pitch(snLanding,choose(0.8,1.0,1.2));
	audio_play_sound(snLanding,4,false);
	repeat(5)
	{
		with (instance_create_layer(x,bbox_bottom,"Bullets",oDust))	
		{
			vsp =0;
			
		}
	}
	}
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer
	}
	else
	{
		sprite_index = sPlayerR
	}
}
//Turns player sprite left when not running right
if (hsp != 0) image_xscale = sign(hsp);
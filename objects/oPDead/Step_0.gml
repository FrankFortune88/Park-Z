if (done == 0)
{
	vsp = vsp +grv;

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

	x = x +hsp;

	//vertical collision
	if (place_meeting(x,y+vsp,oWall))
	{
		if (vsp > 0)
		{
		done = 1;
		image_index = 1;
		alarm[0] = 60;
		}
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}

	y = y + vsp;
}
/// @desc Draw Score
if (room != rMenu) && (instance_exists(oPlayer)) && (global.kills > 0)
{
	killtextscale = max(killtextscale * 0.95,1);
	scr_DrawSetText(c_black, fMenu, fa_right, fa_top);
	draw_text_transformed(RES_W-8,12,string(global.kills) + "  Zombies exterminated", killtextscale, killtextscale, 0);
	draw_set_color(c_white);
	draw_text_transformed(RES_W-12,10,string(global.kills) + " Zombies exterminated", killtextscale, killtextscale, 0);
}
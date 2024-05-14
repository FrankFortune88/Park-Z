draw_set_color(c_black)
draw_rectangle(0,0,RES_W,60,false)
draw_rectangle(0,RES_H-60,RES_W,RES_H,false)

scr_DrawSetText(c_black, fSign, fa_center, fa_top);
draw_text(650, 300,text);
draw_set_color(c_white);
draw_text(650,300, text);

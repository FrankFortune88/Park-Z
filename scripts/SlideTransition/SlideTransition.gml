// SlideTransition(mode,targetroom)
///@arg Mode  sets transition mode between next restart and goto
///@arg Target sets target rpp, wjem isomg the goto mode

function SlideTransition(argument0, argument1)
{
	with(oTransition)
	{
		mode = argument[0];
		if(argument_count > 1) target = argument[1];
	}
}
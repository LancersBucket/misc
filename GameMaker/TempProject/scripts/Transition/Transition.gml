/// @arg Mode sets transiton
/// @arg Target sets target in GOTO
function Transition() {

	with (oTransition)
	{
		mode = argument[0];
		if (argument_count > 1)
		{
			target = argument[1];
		}
	}


}

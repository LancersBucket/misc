/// @function Transition(mode, target)
/// @param {enum} mode sets transiton
/// @param {real} target sets target in GOTO
function Transition(_mode, _target) {
	with (oTransition)
	{
		mode = _mode;
		if (argument_count > 1)
		{
			target = _target;
		}
	}


}

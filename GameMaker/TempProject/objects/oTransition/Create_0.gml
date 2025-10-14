w = display_get_gui_width();
h = display_get_gui_height();

enum Transition_Mode
{
	OFF,
	NEXT,
	GOTO,
	INTRO
}
mode = Transition_Mode.INTRO;
percent = 1;
target = room;
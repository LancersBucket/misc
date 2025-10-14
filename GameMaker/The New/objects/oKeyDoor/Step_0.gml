image_index = keydoorstate
if instance_exists(oKey2)
{
	if (place_meeting(x - 1,y,oPlayer) && (oKey.heldkey = true) && (keyboard_check_pressed(ord("E"))) && (keydoorstate = false))
	{
		oKey.heldkey = false;
		key1unlock = true
	}
		if (place_meeting(x - 1,y,oPlayer) && (oKey2.heldkey2 = true) && (keyboard_check_pressed(ord("E"))) && (keydoorstate = false))
	{
		oKey2.heldkey2 = false
		key2unlock = true
	}
	if ((key1unlock = true) && (key2unlock = true))
	{
		keydoorstate = true
	}
}
if !instance_exists(oKey2)
{
	if (place_meeting(x - 1,y,oPlayer) && (oKey.heldkey = true) && (keyboard_check_pressed(ord("E"))) && (keydoorstate = false))
	{
		oKey.heldkey = false;
		keydoorstate = true;
	}
}


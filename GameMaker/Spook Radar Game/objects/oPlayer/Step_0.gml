#region //Movement
var key_left
var key_right
var key_up
var key_down

if (playercontrol)
{
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
	key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
}
else
{
	key_left = 0;
	key_right = 0;
	key_up = 0;
	key_down = 0;
}

//Movement
var horizontal = key_right - key_left;
var vertical = key_down - key_up;

hsp = horizontal * movesp;
vsp = vertical * movesp;

x += hsp;
y += vsp;

#endregion

// Creating the Radar Beam
beamx = lengthdir_x(radardistance,oRadar.rotation)
beamy = lengthdir_y(radardistance,oRadar.rotation)

// Collision check for the radar beam
var detected = ds_list_create()
var detectedLength = collision_line_list(x,y,x+beamx,y+beamy,all,false,true,detected,true)

// Gets list of active blips
var _active = ds_list_create()
for (var i = 0; i < instance_number(oBlip); i++) {
	ds_list_add(_active, instance_find(oBlip,i))
}

var mark = false;

// Checks for the size of collision list
if (detectedLength > 0) {
	// Loops through collision list
	for (var i = 0; i < detectedLength; ++i;)
    {
		// Checks if there is an object in the way
		if (detected[| i].object_index == oBlock) {
			// If so, cancel the rest of the process after obstruction
			break;
		}
		// Checks if the active blip list is empty
		if (!ds_list_empty(_active)) {
			// Loops through active blip list
			for (var j = 0; j < ds_list_size(_active); j++) {
				// Checks if there is already an active blip for the object
				if (ds_list_find_index(detected, _active[| j].cid) != -1) {
					// If so, skip the blip creation process
					mark = true
				}
			}
		}
		if (!mark) {
			// Creates a blip and gives it the instance it is for
			var _newBlip = instance_create_layer((detected[| i].x-x)/4+100,(detected[| i].y-y)/4+100,"Instances_1",oBlip)
			_newBlip.cid = detected[| i];
		}
		// Resets var
		mark = true;
	}
}

ds_list_destroy(detected)
ds_list_destroy(_active)
togglestate = false;

//sid determined by variable definition
sid = 0;
door_link = noone;
onetimecodelock = false

for (i = 0; i < instance_number(oDoor); i++) {
	doors[i] = instance_find(oDoor,i);
}
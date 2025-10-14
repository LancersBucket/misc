//Create player at checkpoint (or starting location), on layer "Player"
instance_create_layer(playerstartx + 16, playerstarty + 16, "Player", oPlayer);
//reset variables
dead = false;
lock = false;
/// @description Insert description here
// You can write your code in this editor

// Create dust cloud
var _dustX, _dustY;
_dustX = obj_player.x - (vx*4);
_dustY = irandom_range(obj_player.y-10, obj_player.y+10);
if (running == true) {
	// Create dust clouds only if moving
	if (vx != 0 || vy != 0) {
		instance_create_depth(_dustX, _dustY, depth+2, obj_dust);
	}
	// Reset alarm
	alarm[0] = 8 + (1 + carryLimit);
}

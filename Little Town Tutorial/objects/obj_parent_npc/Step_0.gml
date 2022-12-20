/// @description Insert description here
// You can write your code in this editor


// Change appearance with state
switch myState {
	case npcState.normal: {
		// Random loop timing
		if (image_speed > 0) {
			if (image_index == image_number-1) {
				image_speed = 0;
				alarm[0] = irandom_range(loopRange01, loopRange02);
			}
		}
	}; break;
	case npcState.done: {
		if (doneSprite != noone && sprite_index != doneSprite) {
			sprite_index = doneSprite;
		}
	}; break;
}

// Depth sorting
depth = -y;
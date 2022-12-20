// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_showPrompt(_object, _x, _y){
	// Check that the object we are trying to show the prompt for exists
	if (instance_exists(_object)) {
		// Check that the textbox and prompt doesn't already exist
		if (!instance_exists(obj_textbox) && !instance_exists(obj_prompt)) {
			if (obj_player.myState != playerState.puttingDown) {
				iii = instance_create_depth(_x, _y, -10000, obj_prompt);
				return iii;
			}
		}
	}
}

function scr_dismissPrompt(_whichPrompt, _toReset){
	// Checks that the prompt is defined
	if (_whichPrompt != undefined) {
		// Checks that the instance of the prompt exists
		if (instance_exists(_whichPrompt)) {
			// Tell prompt Object to fade out
			with (_whichPrompt) {
				fadeMe = "fadeOut";
			}
			// Reset appropriate prompt variable
			if (instance_exists(obj_player)) {
				with (obj_player) {
					switch _toReset {
						// Reset npcPrompt
						case 0: npcPrompt = noone; break;
						case 1: itemPrompt = noone; break;
					}
				}
			}
		}
	}
}
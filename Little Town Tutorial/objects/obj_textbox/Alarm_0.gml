/// @description Insert description here
// You can write your code in this editor

// Return control to player if no sequence is to load
if (sequenceToShow == noone) {
	global.playerControl = true;
}

// Create sequence if appropriate
if (sequenceToShow != noone) {
	// Set sequence to center of camera view
	var _camX = camera_get_view_x(view_camera[0]) + floor(camera_get_view_width(view_camera[0])*0.5);
	var _camY = camera_get_view_y(view_camera[0]) + floor(camera_get_view_height(view_camera[0])*0.5);
	
	// Make sure our Sequence doesn't already exist
	if (instance_exists(obj_control) && !layer_sequence_exists(obj_control.curSeqLayer, sequenceToShow)) {
		if (layer_exists(obj_control.curSeqLayer)) { 
			// Create (play) the sequence
			layer_sequence_create(obj_control.curSeqLayer, _camX, _camY, sequenceToShow);
			// Make sure cutscenes layer is above the action
			layer_depth(obj_control.curSeqLayer, -10000);
		}
	}
}

// Destroy me
instance_destroy();
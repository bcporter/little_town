/// @description Environment Parent Code
// You can write your code in this editor

// Depth sorting
depth = -y;

// Manage emitter sound for Sequences
if (myEmitter != -1 && useSound != noone && audio_is_playing(useSound)) {
	if (instance_exists(obj_control)) {
		// Duck my sound if a sequence is playing
		if (obj_control.sequenceState == seqState.playing) {
			// Set maximum volume (gain) to 0
			audio_emitter_gain(myEmitter, 0);
		}
		// Restore initial volume (gain) if a sequence isn't playing
		else {
			if (audio_emitter_get_gain(myEmitter) < volInit) {
				// Reset maximum volume (gain) back to volInit
				audio_emitter_gain(myEmitter, volInit);
			}
		}
	}
}
/// @description Insert description here
// You can write your code in this editor

// Game variables
global.playerControl = true;
global.gameOver = false;
global.gameStart = false;
townBGMVolume = audio_sound_get_gain(snd_townBGM);
townAmbienceVolume = audio_sound_get_gain(snd_townAmbience);


// Player states 
enum playerState {
	idle,
	walking,
	pickingUp,
	carrying,
	carryIdle,
	puttingDown,
}

// Item states
enum itemState {
	idle, 
	taken,
	used,
	puttingBack,
}

// Sequence states
enum seqState { 
	notPlaying,
	waiting,
	playing,
	finished,
}
// Sequence variables
sequenceState = seqState.notPlaying;
curSeqLayer = noone;
curSeq = noone;

// NPC states
enum npcState {
	normal, 
	done,
}


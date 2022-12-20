/// @description Setting up text to display
// You can write your code in this editor

// Textbox variables
textToShow = "Any text that you would like to enter, you can enter here. buddy holly ooweeoo";
textWidth = 450;
lineHeight = 34;
global.playerControl = false;
fadeMe = 0;
fadeSpeed = 0.1;
image_alpha = 0;
sequenceToShow = noone;

// Dismiss any visible prompts
scr_dismissPrompt(obj_prompt, 0);

// Play UI sound
audio_play_sound(snd_pop01, 1, 0);	
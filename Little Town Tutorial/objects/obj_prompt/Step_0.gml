/// @description Insert description here
// You can write your code in this editor

// Bob up and down
y += shift;

// Fade effects
switch fadeMe {
	// Fade in
	case "fadeIn": {
		if (image_alpha < 1) {
			image_alpha += fadeSpeed;
		}
		if (image_alpha == 1) {
			fadeMe = "fadeVisible";
		}; break;
	}
	// Fade out
	case "fadeOut": {
		if (image_alpha > 0) {
			image_alpha -= fadeSpeed;
		}
		if (image_alpha == 0) {
			fadeMe = "fadeDone";
			//Queue up to destroy
			alarm[0] = 2;
		}
	}; break;
}
/// @description Animation, effects
// You can write your code in this editor

// Fade effects
switch fadeMe {
	// Fade in
	case 0: {
		if (image_alpha < 1) {
			image_alpha += fadeSpeed;
		}
		if (image_alpha == 1) {
			fadeMe = 1;
		}; break;
	}
	// Fade out
	case 2: {
		if (image_alpha > 0) {
			image_alpha -= fadeSpeed;
		}
		if (image_alpha == 0) {
			fadeMe = 3;
			//Queue up to destroy
			alarm[0] = 2;
		}
	}; break;
}
// Movement options
// Basic movement, WAD, left/jump/right


if(place_free(x, y-1)){
	gravity = 0.8;
}

/*
// Gravity Manipulation
if(place_meeting(x, y+grv, obj_platform)){
	y += grv;
}
else{
	
}
	
// Move right (D || right key)
if(keyboard_check(vk_right) || keyboard_check(ord("D"))){
	//if character is about to hit the wall, do nothing.
	if(place_meeting(x+movspd, y, obj_platform)){
	}
	else{
		sprite_index = spr_character_run;
		x += src_approach(0, mSpeed, aSpeed);
	}
}

// Move left (A || left key)
if(keyboard_check(vk_left) || keyboard_check(ord("A"))){
	//if chacter about to hit a wall on the left, do nothing
	if(place_meeting(x-movspd, y, obj_platform)){
	}
	else{
		x -= movspd;
	}
}
// Jump (W || space || up_key)
if(keyboard_check(vk_up) || keyboard_check(ord("W")) || keyboard_check(vk_space)){
	// If there is an object over head, stop the chacter
}

if(keyboard_check(vk_nokey)){
	sprite_index = spr_character_idle_jump;
}
*/
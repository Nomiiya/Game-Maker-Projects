// Movement options
// Basic movement, WAD, left/jump/right

// Move right (D || right key)
if(keyboard_check(vk_right) || keyboard_check(ord("D"))){
	//if character is about to hit the wall, do nothing.
	if(place_meeting(x+movspd, y, obj_platform)){
	}
	else{
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
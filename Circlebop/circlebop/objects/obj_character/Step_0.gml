// Movement options
// Basic movement, WAD, left/jump/right
key_left =	keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check_pressed(vk_space);




// Idle Animation
if(keyboard_check(vk_nokey)){
	sprite_index = spr_character_idle;	
}


// Set the left or right movements along with the animation
if(key_left || key_right){
	// Set the animation
	sprite_index = spr_character_run;
	
	// Set the running speed
	hsp = walksp;
	
	if(key_right){
		// Check for collision
		if(place_meeting(x+hsp, y, obj_platform)){
			while(!place_meeting(x+sign(hsp), y, obj_platform)){
					x += hsp;
			}
			hsp = 0;
		}
		x += hsp;
	}
	
	if(key_left){
		// Check for collision
		if(place_meeting(x+hsp, y, obj_platform)){
			while(!place_meeting(x+sign(hsp), y, obj_platform)){
					x -= hsp;
			}
			hsp = 0;
		}
		x -= hsp;
	}
}

/*
// Gravity
// Setting Global Gravity
vsp = grv;

if(keyboard_check_pressed(vk_space) && place_meeting(x, y+1, obj_platform)){
	sprite_index = spr_character_jump;
	vsp = jmpsp;
}

if(place_meeting(x, y+vsp, obj_platform)){
	while(!place_meeting(x, y+sign(vsp), obj_platform)){
		y += sign(vsp);	
	}
	vsp = 0;
}

y += vsp;
*/


// Calculating the movement
/*
// Later Expand to different left and right animations
if(key_left || key_right){
	// Change sprite to walking
	sprite_index = spr_character_run;	
	
	var move = key_right - key_left;

	hsp = move * walksp;
	
	// Collision Checking
	if (place_meeting(x+hsp, y, obj_platform)){
	    while (!place_meeting(x+sign(hsp), y, obj_platform)){
	        x+=sign(hsp);
	    }
	    hsp=0;
	}
	x += hsp;
}
*/




/*
// change the variable depending on the input given
if(keyboard_check(vk_right)){
	sprite_index = spr_character_run;
	hspd += movspd;	
}
if(keyboard_check(vk_left)){
	sprite_index = spr_character_run;
	hspd -= movspd;
}
if(keyboard_check(vk_nokey)){
	sprite_index = spr_character_idle_jump;
	//sprite_index = spr_character_idle;
	hspd -= sign(hspd);
}

// Ensure that the character doesn't exceed limits
hspd = clamp(hspd, -maxhspd, maxhspd);


// check if we're about to hit an obj_platform, stop if we do
if (place_meeting(x+hspd, y, obj_platform)){
    while (!place_meeting(x+sign(hspd), y, obj_platform)){
        x+=sign(hspd);
    }
    hspd=0;
}
else{
	x += hspd;	
}
// Gravity Mechanic && Jump Mechanic

// Set Gravity as Base
vspd = grv;

if(keyboard_check_pressed(vk_space) && place_meeting(x, y+1, obj_platform)){
	sprite_index = spr_character_jump;
	vspd = jumpspd;
}

if(place_meeting(x, y+vspd, obj_platform)){
	while(!place_meeting(x, y+sign(vspd), obj_platform)){
		y += sign(vspd);	
	}
	vspd = 0;
}

y += vspd;


*/
/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_nokey)){
	sprite_index = character_idle_jump;
}
if(keyboard_check(vk_right)){
	sprite_index = character_idle;
	x += 5;
}
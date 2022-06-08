//persegue o player
centro_x = obj_character.x -32;
centro_y = obj_character.y -32;
move_towards_point(centro_x, centro_y,spd)

//virar de acordo com o mouse
if hspeed > 0{
	image_xscale = resize
} else {
	image_xscale = - resize
}

show_debug_message(life_enemy)
//vida
if (life_enemy <= 0){
	instance_destroy();
}
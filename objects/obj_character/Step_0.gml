//andar


if keyboard_check(ord("A")) & place_free(x-col, y){
	x-=mspd;
}

if keyboard_check(ord("D")) & place_free(x+col, y) {
	x+=mspd;
}

if keyboard_check(ord("W")) & place_free(x, y-col){
	y-=mspd;
}

if keyboard_check(ord("S")) & place_free(x, y+col){
	y+=mspd;
}


// animação de andar
key_left_pressed = keyboard_check(ord("A"))
key_right_pressed = keyboard_check(ord("D"))
key_up_pressed = keyboard_check(ord("W"))
key_down_pressed = keyboard_check(ord("S"))
vmove_dir = key_down_pressed - key_up_pressed
move_dir = key_right_pressed - key_left_pressed
resize = 4

//trocar sprites quando movimentar
if move_dir!=0 || vmove_dir!=0 {
	sprite_index = walking_animation_strip6
	image_speed = 0.3
} else {
	sprite_index = idle_animation_strip5
	image_speed = 0.2
}

//virar de acordo com o mouse
if x < mouse_x{
	image_xscale = resize
} else {
	image_xscale = - resize
}
	

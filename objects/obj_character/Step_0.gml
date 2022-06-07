//andar

/*
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
*/


//colisão
if (key_left_pressed == 1) {
	var left_Top = tilemap_get_at_pixel(map_id, bbox_left-mspd, bbox_top);
	var left_Bot = tilemap_get_at_pixel(map_id, bbox_left-mspd, bbox_bottom);
	
	if (left_Top == 0 && left_Bot == 0) { x -= mspd}
}

if (key_right_pressed == 1){ 
	
	// is there a "collision" on the left side 
	var right_Top = tilemap_get_at_pixel(map_id, bbox_right +mspd, bbox_top);
	var right_Bot = tilemap_get_at_pixel(map_id, bbox_right +mspd, bbox_bottom);
   
   // is there no tile block, you can  move
   if (right_Top == 0 and right_Bot == 0) { x += mspd;	}
	}
	
	
	
if (key_up_pressed == 1){ 
	
	// is there a "collision" on the top  
	var up_Left  = tilemap_get_at_pixel(map_id, bbox_left,  bbox_top -mspd);
	var up_Right = tilemap_get_at_pixel(map_id, bbox_right, bbox_top -mspd);
   
   // is there no tile block, you can  move
   if (up_Left == 0 and up_Right == 0) { y -= mspd;	}
	}
	
if (key_down_pressed == 1){ 
	
	// is there a "collision" on the bottom side
	var down_Left  = tilemap_get_at_pixel(map_id, bbox_left,  bbox_bottom +mspd );
	var down_Right = tilemap_get_at_pixel(map_id, bbox_right, bbox_bottom +mspd);
   
   // is there no tile block, you can  move
   if (down_Left == 0 and down_Right == 0) { y +=mspd;	}
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


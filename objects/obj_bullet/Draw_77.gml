if (place_meeting(x,y,obj_block)) instance_destroy();


if (tilemap_get_at_pixel(map_id, x, y)){
	instance_destroy()	
}

if (place_meeting(x,y,obj_block)) ||  (tilemap_get_at_pixel(map_id, x, y)) {

repeat(6){
	with (instance_create_depth(x,y,depth-1, obj_particle)) {
		sprite_index = spr_dust
		image_angle = random(360)
		fric = 0.8
		
		motion_add(other.image_angle+random_range(-70, 70), random_range(-4,-9))
	}
}
}

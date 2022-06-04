/// direção da arma
dir = point_direction(x, y, mouse_x, mouse_y)
image_angle = dir


//atribuir arma ao personagem
if obj_character.x < mouse_x {
	image_yscale=+rescale
	x = obj_character.x+22
	y = obj_character.y-50
} else {
	image_yscale=-rescale
	x = obj_character.x-22
	y = obj_character.y-50
}

//verificar se o mouse for clicado
firing_delay = firing_delay - 1
recoil = max(0, recoil - 1)


if (mouse_check_button(mb_left)) && (firing_delay < 0) && (ammo > 0){
	firing_delay = 15
	recoil = 8
	ammo -= 1
	bulletSpawnX = x + lengthdir_x(gunLength,image_angle + gun_direction * sign(image_yscale))
	bulletSpawnY = y + lengthdir_y(gunLength,image_angle + gun_direction * sign(image_yscale))
	sprite_index = gun_shooting_strip9
	
	instance_create_layer(x,y,"Gun", obj_shell)
	
	with (instance_create_layer(bulletSpawnX, bulletSpawnY, "Bullet", obj_bullet)) {
		speed = 25;
		direction = other.image_angle + random_range(-4,4)
		image_angle = direction
	}
		
} 


if ammo == 0 || keyboard_check(ord("R")) && ammo != 8 {
	timer = 48
	show_text = 1
	sprite_index = gun_reloading_strip31
	image_speed = 1.2
	ammo = 8
	firing_delay = 65
	is_reloading = 1
} 

//recoil da arma
x = x - lengthdir_x(recoil, image_angle)
y = y - lengthdir_y(recoil, image_angle)



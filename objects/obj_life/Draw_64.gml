if global.life == 3{	
	draw_sprite(life, 0, 1200, 10)
}
else if global.life == 2{
	draw_sprite(life, 1, 1200, 10)
}
else if global.life == 1{
	draw_sprite(life, 2, 1200, 10)
}

if global.life == 0 {
	draw_sprite(life, 3, 1200, 10)
}
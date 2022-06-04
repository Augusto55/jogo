draw_self()
	
if show_text == 1 {
	draw_set_font(font1)
	draw_set_color(c_white)
	
	if obj_character.x < mouse_x {
		draw_text(obj_character.x - 40, obj_character.y - 120, "RELOADING")
	} else {
		draw_text(obj_character.x - 45, obj_character.y - 120, "RELOADING")
	}
	
	if (timer > 0) {
		draw_set_alpha(1)
		timer--;
		}

	if (timer == 0)
	{
		show_text = 0
		timer = -1
	}
}

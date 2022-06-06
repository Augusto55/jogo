//move speed

mspd = 3
col = mspd + 1

image_speed = 0.2;

lay_id = layer_get_id("Collision")
map_id = layer_tilemap_get_id(lay_id)

key_left_pressed = keyboard_check(ord("A"))
key_right_pressed = keyboard_check(ord("D"))
key_up_pressed = keyboard_check(ord("W"))
key_down_pressed = keyboard_check(ord("S"))

move_dir = key_right_pressed - key_left_pressed
vmove_dir = key_up_pressed - key_down_pressed

resize = 4


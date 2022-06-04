image_angle = spin


if abs(speed) > 0
{
    friction = 1;
}
else
{
    friction = 0;
}

if(frame_counter > 0) {
	frame_counter -=1
} else {
	instance_destroy()
}

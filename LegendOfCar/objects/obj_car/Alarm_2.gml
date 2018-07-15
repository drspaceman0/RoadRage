/// @description  Stop falling in pit

isFalling = false;
sprite_index = spr_car_down

x = lastX + width * sign(lastX - x)
y = lastY + height * sign(lastY - y)
vel_x = 0
vel_y = 0


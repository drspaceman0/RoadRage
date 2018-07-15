/// @description  Step

x = obj_car.x
y = obj_car.y

lmbDown = mouse_check_button(mb_left)

if lmbDown and canShoot{
    
    // create bullet
    var b = instance_create(x,y,obj_bullet)
    with b {
        dir = point_direction(x , y, mouse_x, mouse_y); 
        motion_add(dir, other.bulletSpeed);
    }
    alarm[0] = bulletWaitTime
    canShoot = false;
}


/// @description Movement

leftKey = keyboard_check(ord("A")) or keyboard_check(vk_left)
rightKey = keyboard_check(ord("D")) or keyboard_check(vk_right)
upKey = keyboard_check(ord("W")) or keyboard_check(vk_up)
downKey =  keyboard_check(ord("S")) or keyboard_check(vk_down)
if(keyboard_check(vk_escape))game_end()

h=0
v=0
if(leftKey) h-=1
if(rightKey) h+=1
if(upKey) v-=1
if(downKey) v+=1
 
/*
movement callibration code
if(keyboard_check(ord('O')))accel-=0.01
if(keyboard_check(ord('P')))accel+=0.01

if(keyboard_check(ord('K')))vel_damp-=0.01
if(keyboard_check(ord('L')))vel_damp+=0.01

if(keyboard_check(ord('N')))min_vel-=0.01
if(keyboard_check(ord('M')))min_vel+=0.01
*/


// determine direction
if (h==0)
{
    if(v==-1)dir=90
    else if(v==0)dir=dir
    else dir=270
}else if (h==1)
{
    if(v==-1)dir=45
    else if(v==0)dir=0
    else dir=315
}else if (h==-1)
{
    if(v==-1)dir=135
    else if(v==0)dir=180
    else dir=225
}

if(isFalling)
{
    if(alarm[2] == -1)
    {
        sprite_index = spr_falling
        alarm[2] = room_speed
        image_speed = 0.15;
    }
    return 1;
}
// keep track of last position for falling logic
lastX = x
lastY = y

// change sprite
if(dir==90)sprite_index=spr_car_up
else if(dir==45)sprite_index=spr_car_upright
else if(dir==135)sprite_index=spr_car_upleft
else if(dir==0)sprite_index=spr_car_right
else if(dir==225)sprite_index=spr_car_downleft
else if(dir==315)sprite_index=spr_car_downright
else if(dir==270)sprite_index=spr_car_down
else sprite_index=spr_car_left

// calculate velocity


// dampen velocity
if( (h==0 or h==1) and vel_x<0) vel_x += vel_damp
else if( (h==0 or h==-1) and vel_x>0) vel_x -= vel_damp

if( (v==0 or v==1) and vel_y<0) vel_y += vel_damp
else if( (v==0 or v==-1) and vel_y>0) vel_y -= vel_damp


// calculate velocity
vel_x += (accel )*h 
vel_y += (accel )*v 


vel_x=clamp(vel_x,-max_vel,max_vel)
vel_y=clamp(vel_y,-max_vel,max_vel)
 

//stop completly if slow enough
if(h==0 and abs(vel_x)<min_vel)vel_x=0
if(v==0 and abs(vel_y)<min_vel)vel_y=0


// if going fast enough, and changing direction, add tire marks
if(!isSkidding and ((vel_x <= -1*(max_vel-4) and rightKey) or
   (vel_x >= max_vel - 4 and leftKey) or 
   (vel_y <= -1*(max_vel-4) and downKey) or
   (vel_y >= max_vel-4 and upKey) )){
   isSkidding=true
   alarm[1] = room_speed/4
      
}


// collision
if(place_meeting(x+vel_x, y, obj_wall))
{
    vel_x = 0
} 
if(place_meeting(x,y+vel_y, obj_wall))
{
    vel_y = 0
} 
  

// movement 
x += vel_x 
y += vel_y 

// keep within room bounds
if(x <= sprite_width + 2 or x >= room_width-sprite_width - 2)
{
    vel_x = 0
    x = clamp(x,sprite_width+2,room_width-sprite_width-2)
}

if(y <= sprite_height or y >= room_height-sprite_height/2 - 4)
{
    vel_y = 0
    y = clamp(y,sprite_height,room_height-sprite_height/2 - 4)
}

// make tire marks
if(isSkidding)
{
    if (instance_exists(obj_surface_controller)) {
        surface_set_target(obj_surface_controller.surf);
        draw_sprite_ext(spr_tireMark, 0, x - sprite_width/4, y - sprite_width/4, image_xscale, image_yscale, image_angle, c_white, image_alpha);
        draw_sprite_ext(spr_tireMark, 0, x + sprite_width/4, y - sprite_width/4, image_xscale, image_yscale, image_angle, c_white, image_alpha);
        draw_sprite_ext(spr_tireMark, 0, x - sprite_width/4, y + sprite_width/4, image_xscale, image_yscale, image_angle, c_white, image_alpha);
        draw_sprite_ext(spr_tireMark, 0, x + sprite_width/4, y + sprite_width/4, image_xscale, image_yscale, image_angle, c_white, image_alpha);
        surface_reset_target();  
    }
}

/*
show_debug_message("h=" + string(h))
show_debug_message("v=" + string(v))
show_debug_message("dir=" + string(dir))
show_debug_message("vel_x=" + string(vel_x))
show_debug_message("vel_y=" + string(vel_y))
show_debug_message("max_vel=" + string(max_vel))
show_debug_message("accel=" + string(accel))
show_debug_message("vel_damp=" + string(vel_damp))
show_debug_message("min_vel=" + string(min_vel))
*/

/* */
/*  */

/// @description  Collision with civillian
if(other.isHit)
{
    return -1
}
     
    
if(abs(vel_x) < civillian_collision_vel and abs(vel_y) < civillian_collision_vel)
{
    // gently push enemy aside if not fast enough
    other.x -= sign(vel_x) * (vel_x + 1)
    other.y -= sign(vel_y) * (vel_y + 1)
}
else 
{   
    other.hitVelocity_x = vel_x
    other.hitVelocity_y = vel_y
    other.state= "Hit" 
    // Make it so that the enemy is in front of car and not under it
    while(place_meeting(x,y,other))
    {
        other.x += sign(vel_x)
        other.y += sign(vel_y)
    }
    
    isBloody=true
    alarm[0]=room_speed*2
    obj_camera.isShaking=true;
}


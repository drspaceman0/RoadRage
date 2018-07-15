if(alarm[0] == -1)
{
    alarm[0] = timeAlive
} 


if(obj != noone and object_exists(obj))
{
    strX = obj.x + distanceFromOriginX +random_range(-1,1)
    strY = obj.y + distanceFromOriginY +random_range(-1,1)
} else 
{
    strX = x + distanceFromOriginX +random_range(-1,1)
    strY = y + distanceFromOriginY +random_range(-1,1)
}




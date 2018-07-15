/// @description  Position view based on player


//roomX = (obj_car.x div roomWidth) * roomWidth;
//roomY = (obj_car.y div roomHeight) * roomHeight;



//__view_set( e__VW.XView, 0, Approach(__view_get( e__VW.XView, 0 ),roomX,roomTransitionSpeed ))
//__view_set( e__VW.YView, 0, Approach(__view_get( e__VW.YView, 0 ),roomY,roomTransitionSpeed ))
if(isShaking)
{
    if(alarm[0]==-1)
    {
        alarm[0] = shakeTime 
    } 
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (random_range(-2,2) ))
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (random_range(-2,2) ))
} 






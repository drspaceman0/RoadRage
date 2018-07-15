/// @description Move_In_Direction(obj, dir)
/// @param obj
/// @param  dir


switch(argument1)
        {
            case 0:
                argument0.image_xscale = -1
                argument0.x += moveSpeed;
                break;
            case 45:
                argument0.image_xscale = -1
                argument0.x += moveSpeed;
                argument0.y -= moveSpeed;
                break;
            case 90:
                argument0.y -= moveSpeed;
                break;
            case 135:
                argument0.image_xscale = 1
                argument0.x -= moveSpeed;
                argument0.y -= moveSpeed;
                break;
            case 180:
                argument0.image_xscale = 1
                argument0.x -= moveSpeed;
                break;
            case 225:
                argument0.image_xscale = 1
                argument0.x -= moveSpeed;
                argument0.y += moveSpeed;
                break;
            case 270:
                argument0.y += moveSpeed;
                break;
            case 315:
                argument0.image_xscale = -1
                argument0.x += moveSpeed;
                argument0.y += moveSpeed;
                break;
            default:
                break; 
}

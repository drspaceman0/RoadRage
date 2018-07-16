switch(goal_type)
{
    case "hit":
        if(instance_exists(goal_target))
        {
            arrow_x = clamp(goal_target.x,__view_get( e__VW.XView, 0 )+sprite_width,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-sprite_width)
            arrow_y = clamp(goal_target.y,__view_get( e__VW.YView, 0 )+sprite_height,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-sprite_height)
        } else 
        {
            goal_type = noone;
        }
        
        break;
    default:
        break;
}




/// @description  Enemy behavior



// cordinates relative to room
var relX = x mod roomWidth
var relY = y mod roomHeight

switch(state)
{
    case "Hit":
        if(!isHit)
        {
            isHit=true
            alarm[1] = room_speed * 2
            depth = -1;
            // say something funny
            //Create_Text(x,y,"FUCK!", self, c_white)
            
			// award xp
			Create_Text(x-2,y-2, string( string(xpReward))  , self, c_lime)
			obj_xp.xp += xpReward
			
			
            // draw blood stain
            // Amount of blood
            var count = random_range(4, 32);
            for (var i = 0; i < count; i++) {
                instance_create(x + random_range(-8, 8), y + random_range(-8, 8), obj_blood);
            }
            
            // other enemies will get scared
            with(obj_enemy)
            {
                /*
                if(state != "Hit" and playerInRoom)
                {
                    state = "Flee"
                    alarm[0] = timePeriod / 2
                    Create_Text(x,y,"Oh shit!", self)
                }
                    */
            }
            
        }
        x += hitVelocity_x
        y += hitVelocity_y
        
        // show blood
        instance_create(x, y, obj_blood)
        if(t % 8 == 0)
        {
            hitDir += 45
            hitDir %= 360
            image_angle = hitDir
        } 
        if(place_meeting(x,y,obj_wall))
        {
            instance_destroy()
        }
        
        break; 
    case "Wander":
    {
        Move_In_Direction(self,dir)
        
        // change behavior if running into wall
        if(place_meeting(x,y,obj_wall))
        {
            if(irandom(10) >= 3)state="Wander"
            else state="Idle"   
            alarm[0] = irandom(timePeriod) 
            
            //dir = irandom(8) * 45
            dir = (dir + 180) mod 360
            Move_In_Direction(self,dir)
            Move_In_Direction(self,dir)
        }        
        break;
    }
    case "Flee":
    {
        dir = ((round(point_direction(x,y,obj_car.x,obj_car.y) / 45) * 45) + 180) mod 360
        Move_In_Direction(self,dir)
        break;
    }   
    default:
    case "Idle":
    {
        // do nothing
        break;
    }
    
}

// keep within room bounds
//x = clamp(x,room_x+width+4,room_x+roomWidth-width-4)
//y = clamp(y,room_y+height*2,room_y+roomHeight-height+2) 
t+=1


/* */
/*  */

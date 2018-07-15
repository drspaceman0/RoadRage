moveSpeed=1.2 
timePeriod=room_speed*3
image_speed=0.3
t=0

depth = -1

// pick random state 
if(irandom(10) >= 3)state="Wander"
else state="Idle"
alarm[0] = irandom(timePeriod) 

dir = irandom(8) * 45 

hitVelocity_x=0
hitVelocity_y=0
hitVelocity=1.2
hitDir = 0
isHit = false

width = sprite_get_width(sprite_index)
height = sprite_get_height(sprite_index)
// get the room enemy is currently in
room_x = (x div roomWidth) * roomWidth 
room_y = (y div roomHeight) * roomHeight 
playerInRoom = false

bloodStainAmount = 64



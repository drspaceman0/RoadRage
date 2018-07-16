/// @description Insert description here
// You can write your code in this editor

x1 = camera_get_view_x(view_camera[0]) + 140
y1 = camera_get_view_y(view_camera[0]) + 20
x2 = x1 + 300
y2= y1 + 10
  
xp -= 0.3*(level/2)

// increase xp when enemies die
if(xp > xp_required){
	level += 1
	xp = xp % xp_required
}


// decrease xp
if(xp < 0 and level > 1){
	level -= 1
	xp = xp_required
}
if(level < 1)
	level = 1
	
xpPercentage = (xp / xp_required) * 100


/// @description  Get hit by bullet

// knockback
x += lengthdir_x(other.speed,other.dir)
y += lengthdir_y(other.speed,other.dir)


instance_destroy(other)


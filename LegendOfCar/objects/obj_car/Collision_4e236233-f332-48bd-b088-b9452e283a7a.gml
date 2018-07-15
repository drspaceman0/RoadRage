/// @description  check if most of car is facing over pit
if(!isFalling and place_meeting(x + width * sign(x - other.x), y + height * sign(y - other.y), other))
{
    isFalling = true;
}


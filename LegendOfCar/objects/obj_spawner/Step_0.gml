/// @description  stuff

if(instance_number(obj_enemy) < max_enemies and alarm[0] == -1)
{
	instance_create(room_x + random(room_w), room_y + random(room_h), obj_enemy)
    alarm[0] = random(alarmTime)
}


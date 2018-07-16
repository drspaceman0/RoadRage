/// @description Create_Text(x,y,text,obj)
/// @param x
/// @param y
/// @param text
/// @param obj
var t = instance_create(argument0,argument1,obj_text);
t.str = argument2
t.color = argument4
if(argument3 != noone)
{
    t.obj = argument3
}

/// @description  Get random state

// if dieing dont change state
if(state=="Hit")
{
    return 1;
}
    
dir = irandom(8) * 45 
if(irandom(10) >= 3)state="Wander"
else state="Idle"
alarm[0] = irandom(timePeriod) 






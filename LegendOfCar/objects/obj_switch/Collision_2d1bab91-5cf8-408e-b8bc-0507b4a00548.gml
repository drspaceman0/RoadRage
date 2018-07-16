if(other.state == "Hit")
{
    instance_destroy(other);
    sprite_index = spr_diamond_activated;
    activated = true;
}


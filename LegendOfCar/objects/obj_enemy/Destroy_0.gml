


for (var i = 0; i < bloodStainAmount; i++) {
    instance_create(x + random_range(-16, 16), y + random_range(-16, 16), obj_blood);
}


// draw corpse
surface_set_target(obj_surface_controller.surf);
draw_sprite_ext(spr_pawn_enemy_corpse, 0, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
surface_reset_target();


// print an ouch
//Create_Text(x,y,"BLARG!", noone)



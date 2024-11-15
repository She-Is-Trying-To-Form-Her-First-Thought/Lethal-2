/mob/living/carbon/alien/larva/death(gibbed)
	if(stat == DEAD)
		return

	. = ..()

	update_icons()

/mob/living/carbon/alien/larva/spawn_gibs(drop_bitflags=NONE)
	if(drop_bitflags & DROP_BODYPARTS)
		new /obj/effect/gibspawner/larva(drop_location(), src)
	else
		new /obj/effect/gibspawner/larva/bodypartless(drop_location(), src)

/mob/living/carbon/alien/larva/gib_animation()
	new /obj/effect/temp_visual/gib_animation(loc, "gibbed-l")

/mob/living/carbon/alien/larva/spawn_dust()
	new /obj/effect/decal/remains/xeno(loc)

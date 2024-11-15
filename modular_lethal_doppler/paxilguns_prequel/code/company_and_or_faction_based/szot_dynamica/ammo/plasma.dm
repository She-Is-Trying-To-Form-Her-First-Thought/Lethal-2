// Casing and projectile for the plasma thrower

/obj/item/ammo_casing/energy/laser/plasma_glob
	projectile_type = /obj/projectile/beam/laser/plasma_glob
	fire_sound = 'modular_lethal_doppler/paxilguns_prequel/sound/laser_firing/incinerate.ogg'

/obj/item/ammo_casing/energy/laser/plasma_glob/Initialize(mapload)
	. = ..()

	AddElement(/datum/element/caseless)

/obj/projectile/beam/laser/plasma_glob
	name = "plasma globule"
	icon = 'modular_lethal_doppler/paxilguns_prequel/icons/obj/company_and_or_faction_based/szot_dynamica/ammo.dmi'
	icon_state = "plasma_glob"
	damage = 16
	speed = 1.5
	bare_wound_bonus = 55 // Lasers have a wound bonus of 40, this is a bit higher
	pass_flags = PASSTABLE | PASSGRILLE // His ass does NOT pass through glass!

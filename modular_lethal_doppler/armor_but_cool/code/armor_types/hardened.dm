// Hardened vests negate any and all projectile armor penetration, in exchange for having mid af bullet armor
/datum/armor/armor_sf_hardened
	melee = ARMOR_LEVEL_WEAK
	bullet = ARMOR_LEVEL_MID
	laser = ARMOR_LEVEL_WEAK
	energy = ARMOR_LEVEL_TINY
	bomb = ARMOR_LEVEL_WEAK
	fire = ARMOR_LEVEL_MID
	acid = ARMOR_LEVEL_WEAK
	wound = WOUND_ARMOR_WEAK

/obj/item/clothing/suit/armor/sf_hardened
	name = "'Muur' type II hardened vest"
	desc = "A large white breastplate, and a semi-flexible mail of dense panels that cover the torso. \
		While not so incredible at directly stopping bullets, the vest is uniquely suited to cause bullets \
		to lose much of their armor penetrating energy before any damage can be done."
	icon = 'modular_lethal_doppler/armor_but_cool/icons/armor.dmi'
	icon_state = "hardened_standard"
	worn_icon = 'modular_lethal_doppler/armor_but_cool/icons/armor_worn.dmi'
	inhand_icon_state = "armor"
	blood_overlay_type = "armor"
	armor_type = /datum/armor/armor_sf_hardened
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON
	resistance_flags = FIRE_PROOF
	max_integrity = 200
	limb_integrity = 200

/obj/item/clothing/suit/armor/sf_hardened/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text, final_block_chance, damage, attack_type, damage_type)
	. = ..()

	if(istype(hitby, /obj/projectile))
		var/obj/projectile/incoming_projectile = hitby
		incoming_projectile.armour_penetration = 0
		playsound(owner, SFX_RICOCHET, BLOCK_SOUND_VOLUME, vary = TRUE)

/obj/item/clothing/suit/armor/sf_hardened/examine_more(mob/user)
	. = ..()

	. += "What do you do in an age where armor penetration technology keeps getting better and better, \
		and you're quite fond of not being a corpse? The 'Muur' type armor was a pretty successful attempt at an answer \
		to the question. Using some advanced materials, micro-scale projectile dampener fields, and a whole \
		host of other technologies that some poor SolFed procurement general had to talked to death about, \
		it offers a unique advantage over many armor piercing bullets. Why stop the bullet from piercing the armor \
		with more armor, when you could simply force the bullet to penetrate less and get away with less protection? \
		Some people would rather the bullet just be stopped, of course, but when you have to make choices, many choose \
		this one."

	return .

/obj/item/clothing/suit/armor/sf_hardened/emt
	name = "'Archangel' type II hardened vest"
	desc = "A large white breastplate with a lone red stripe, and a semi-flexible mail of dense panels that cover the torso. \
		While not so incredible at directly stopping bullets, the vest is uniquely suited to cause bullets \
		to lose much of their armor penetrating energy before any damage can be done."
	icon_state = "hardened_emt"

/obj/item/clothing/head/helmet/toggleable/sf_hardened
	name = "'Muur' type II enclosed helmet"
	desc = "A thick-fronted helmet with extendable visor for whole face protection. The materials and geometry of the helmet \
		combine in such a way that bullets lose much of their armor penetrating energy before any damage can be done, rather than penetrate into it."
	icon = 'modular_lethal_doppler/armor_but_cool/icons/armor.dmi'
	icon_state = "enclosed_standard"
	worn_icon = 'modular_lethal_doppler/armor_but_cool/icons/armor_worn.dmi'
	inhand_icon_state = "helmet"
	armor_type = /datum/armor/armor_sf_hardened
	toggle_message = "You extend the visor on"
	alt_toggle_message = "You retract the visor on"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	visor_flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	visor_flags_cover = HEADCOVERSEYES
	dog_fashion = null
	resistance_flags = FIRE_PROOF
	max_integrity = 200
	limb_integrity = 200

/obj/item/clothing/head/helmet/toggleable/sf_hardened/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text, final_block_chance, damage, attack_type, damage_type)
	. = ..()

	if(istype(hitby, /obj/projectile))
		var/obj/projectile/incoming_projectile = hitby
		incoming_projectile.armour_penetration = 0
		playsound(src, SFX_RICOCHET, BLOCK_SOUND_VOLUME, vary = TRUE)

/obj/item/clothing/head/helmet/toggleable/sf_hardened/examine_more(mob/user)
	. = ..()

	. += "What do you do in an age where armor penetration technology keeps getting better and better, \
		and you're quite fond of not being a corpse? The 'Muur' type armor was a pretty successful attempt at an answer \
		to the question. Using some advanced materials, micro-scale projectile dampener fields, and a whole \
		host of other technologies that some poor SolFed procurement general had to talked to death about, \
		it offers a unique advantage over many armor piercing bullets. Why stop the bullet from piercing the armor \
		with more armor, when you could simply force the bullet to penetrate less and get away with less protection? \
		Some people would rather the bullet just be stopped, of course, but when you have to make choices, many choose \
		this one."

	return .

/obj/item/clothing/head/helmet/toggleable/sf_hardened/emt
	name = "'Archangel' type II enclosed helmet"
	desc = "A thick-fronted helmet with extendable visor for whole face protection. The materials and geometry of the helmet \
		combine in such a way that bullets lose much of their armor penetrating energy before any damage can be done, rather than penetrate into it. \
		This one has a red stripe down the front."
	icon_state = "enclosed_emt"

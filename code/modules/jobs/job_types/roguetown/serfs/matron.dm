/datum/job/roguetown/veteran
	title = "Matron"
	flag = JESTER
	department_flag = PEASANTS
	faction = "Station"
	total_positions = 1
	spawn_positions = 1

	allowed_sexes = list(FEMALE)
	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Tiefling",
		"Dark Elf",
		"Aasimar",
		"Half-Orc"
	)
	tutorial = "You are the Matron of the orphanage, an old strict lady whom oversee the 'wellbeing' of the orphans, you show them your tricks and you'll make them just as good as you one day."
	allowed_ages = list(AGE_OLD, AGE_IMMORTAL)
	display_order = JDO_MATRON
	outfit = /datum/outfit/job/roguetown/matron
	give_bank_account = 35
	min_pq = 10
	can_have_apprentices = TRUE

/datum/outfit/job/roguetown/matron/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/misc/sewing, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/sneaking, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/stealing, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/lockpicking, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/traps, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/cooking, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.change_stat("strength", -1)
		H.change_stat("intelligence", 2)
		H.change_stat("perception", 1)
		H.change_stat("speed", 2)
		shirt = /obj/item/clothing/suit/roguetown/shirt/dress/gen/black
		armor = /obj/item/clothing/suit/roguetown/armor/leather/vest/black
		pants = /obj/item/clothing/under/roguetown/tights/black
		belt = /obj/item/storage/belt/rogue/leather/cloth/lady
		shoes = /obj/item/clothing/shoes/roguetown/boots/leather
		beltl = /obj/item/storage/belt/rogue/pouch/coins/mid
		backr = /obj/item/storage/backpack/rogue/satchel
		cloak = /obj/item/clothing/cloak/matron
		backpack_contents = list(/obj/item/rogueweapon/knife/dagger/steel = 1)

/datum/job/desertrangers
	department_flag = RANGERS
	selection_color = "#f0420d"
	faction = FACTION_RANGERS
	maptype = "yuma"

	forbids = "The Desert Rangers forbid: Slavery"
	enforces = "The Desert Rangers demand: Obeying orders of superiors, freedom"
	objectivesList = list("End Slavery in the wastes", "Focus on Kebab, display dominance.", "Send out patrols and establish checkpoints to curb slavery and criminals.", "Make sure the legion does not gains dominance over Kebab, if they remain neutral it can be used to the Legions advantage.")
	exp_type = EXP_TYPE_FALLOUT

	access = list(ACCESS_DESERTRANGERS)
	minimal_access = list(ACCESS_DESERTRANGERS)


/datum/outfit/job/desertrangers
	name = "RANGERdatums"
	jobtype = /datum/job/desertrangers
	backpack = /obj/item/storage/backpack/trekker
	satchel = /obj/item/storage/backpack/satchel/trekker
	ears = /obj/item/radio/headset/headset_desertranger
	uniform	= /obj/item/clothing/under/f13/desert_ranger_scout
	head = /obj/item/clothing/head/helmet/f13/ncr/rangercombat/desert
	suit = /obj/item/clothing/suit/armor/f13/rangercombat/desert
	belt = /obj/item/storage/belt/military
	l_hand = /obj/item/gun/ballistic/revolver/revolver44/desert_ranger
	shoes = /obj/item/clothing/shoes/f13/military
	gloves = /obj/item/clothing/gloves/f13/military
	id = /obj/item/card/id/desertrangers/badge
	r_pocket = /obj/item/binoculars
	neck = /obj/item/storage/belt/holster
	backpack_contents = list(
		/obj/item/storage/survivalkit_aid = 1,
		/obj/item/ammo_box/magazine/m44 = 3
		)

/datum/job/desertrangers/chief
	title = "Chief Ranger"
	flag = F13CHIEFRANGER
	head_announce = list("Security")
	total_positions = 1
	spawn_positions = 1
	supervisors = "Yourself"
	description = "You are the chief of the Desert Ranger remnants in the area, ensure law is upheld and slavery is vanquished."
	access = list(ACCESS_DESERTRANGERS, ACCESS_DESERTRANGERSCHIEF)
	req_admin_notify = 1
	display_order = JOB_DISPLAY_ORDER_F13DESERTRANGER_CHIEF
	outfit = /datum/outfit/job/desertrangers/chief
	exp_type = EXP_TYPE_DESERTRANGERSS
	exp_requirements = 1000

/datum/outfit/job/desertrangers/chief/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_SELF_AWARE, src)


/datum/outfit/job/desertrangers/chief
	name = "Chief Ranger"
	jobtype = /datum/job/desertrangers/chief
	backpack = /obj/item/storage/backpack/trekker
	accessory = /obj/item/clothing/accessory/ranger/CR
	id = /obj/item/card/id/desertrangers/chiefbadge
	l_hand = /obj/item/gun/ballistic/rifle/repeater/brush
	r_pocket = /obj/item/binoculars
	neck = /obj/item/storage/belt/holster
	backpack_contents = list(
		/obj/item/ammo_box/tube/c4570 = 2,
		/obj/item/stack/f13Cash/random/low,
		/obj/item/storage/survivalkit_aid = 1,
		/obj/item/ammo_box/m44 = 3,
		)

/datum/job/desertrangers/ranger
	title = "Desert Ranger"
	flag = F13DESERTRANGER
	head_announce = list("Security")
	total_positions = 2
	spawn_positions = 2
	description = "You are a member of the Desert Ranger remnants in the area, ensure law is upheld and slavery is vanquished."
	supervisors = "Chief Ranger"
	access = list(ACCESS_DESERTRANGERS)
	req_admin_notify = 1
	display_order = JOB_DISPLAY_ORDER_F13DESERTRANGER
	outfit = /datum/outfit/job/desertrangers
	exp_type = EXP_TYPE_DESERTRANGERSS
	exp_requirements = 1000

/datum/outfit/job/desertrangers/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_SELF_AWARE, src)


/datum/outfit/job/desertrangers
	name = "Ranger"
	jobtype = /datum/job/desertrangers/chief
	accessory = /obj/item/clothing/accessory/ranger
	backpack = /obj/item/storage/backpack/trekker
	l_hand = /obj/item/gun/ballistic/rifle/repeater/cowboy
	r_pocket = /obj/item/binoculars
	neck = /obj/item/storage/belt/holster
	backpack_contents = list(
		/obj/item/ammo_box/tube/m44 = 2,
		/obj/item/stack/f13Cash/random/low,
		/obj/item/storage/survivalkit_aid = 1,
		/obj/item/ammo_box/m44 = 3,
		)

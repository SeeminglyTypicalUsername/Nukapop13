/datum/outfit/khans
	name = "Khan"
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/khan_jacket
	suit_store = /obj/item/gun/ballistic/revolver/caravan_shotgun
	uniform = /obj/item/clothing/under/f13/khan
	gloves = /obj/item/melee/unarmed/brass/spiked
	head = /obj/item/clothing/head/helmet/f13/khan/pelt
	shoes = /obj/item/clothing/shoes/f13/military/khan_pelt
	backpack_contents = list(
		/obj/item/ammo_box/shotgun/improvised = 2)

/datum/outfit/prisoner/post_equip(mob/living/carbon/human/H, visualsOnly=FALSE)
	if(visualsOnly)
		return

/*-------------------------------------------------------------------------------------------------------------------------*/

/datum/outfit/eighties
	name = "eighties"
	suit = /obj/item/clothing/suit/armor/f13/raiders/roadwarriors
	belt = /obj/item/storage/backpack/spearquiver
	uniform = /obj/item/clothing/under/pants/f13/warboy
	head = /obj/item/clothing/head/helmet/f13/raider/arclight
	glasses = /obj/item/clothing/glasses/f13/biker
	shoes = /obj/item/clothing/shoes/jackboots
	backpack_contents = list(
		/obj/item/melee/onehanded/machete/scrapsabre = 1)

/datum/outfit/eighties/post_equip(mob/living/carbon/human/H, visualsOnly=FALSE)
	if(visualsOnly)
		return

/*-------------------------------------------------------------------------------------------------------------------------*/

/datum/outfit/whitelegs
	name = "white legs"
	head = null
	shoes = null
	suit = /obj/item/clothing/suit/f13/tribal/whitelegs
	backpack_contents = list(
		/obj/item/clothing/under/f13/whitelegs = 1,
		/obj/item/clothing/under/f13/female/whitelegs = 1,
		/obj/item/gun/ballistic/automatic/smg/tommygun/whitelegs = 1,
		/obj/item/gun/ballistic/automatic/pistol/ninemil = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 1,
		/obj/item/ammo_box/magazine/tommygunm45/stick = 2
	)


/datum/outfit/whitelegs/post_equip(mob/living/carbon/human/H, visualsOnly=FALSE)
	if(visualsOnly)
		return
	H.left_eye_color = "000"
	H.right_eye_color = "000"
	H.skin_tone = "albino"
	H.hair_color = "000"
	H.grant_language(/datum/language/whiteleg) //gives them the white leg language.
	H.facial_hair_color = H.hair_color
	H.update_body()
	if(H.mind)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/aoe_turf/knock(null))
	var/list/no_drops = list()
	no_drops += H.get_item_by_slot(ITEM_SLOT_FEET)
	no_drops += H.get_item_by_slot(ITEM_SLOT_ICLOTHING)
	no_drops += H.get_item_by_slot(ITEM_SLOT_OCLOTHING)
	no_drops += H.get_item_by_slot(ITEM_SLOT_HEAD)
	no_drops += H.get_item_by_slot(ITEM_SLOT_EYES)
	for(var/i in no_drops)
		var/obj/item/I = i
		if(I)
			ADD_TRAIT(I, TRAIT_NODROP, CURSED_ITEM_TRAIT)
	switch(H.gender)
		if(FEMALE)
			uniform = /obj/item/clothing/under/f13/female/whitelegs
		if(MALE)
			uniform = /obj/item/clothing/under/f13/whitelegs



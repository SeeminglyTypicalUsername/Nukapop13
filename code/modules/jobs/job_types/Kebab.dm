/*
Town access doors
Kebab government: 130  ACCESS_COMMAND
Sheriff/Deputy, Gatehouse etc: 62 ACCESS_GATEWAY
General access: 25 ACCESS_BAR
Clinic: 133 ACCESS_CLINIC
Church: 22 ACCESS_CHAPEL_OFFICE
Shopkeeper: 34 ACCESS_CARGO_BOT
Barkeep : 28 ACCESS_KITCHEN - you jebronis made default bar for no reason bruh
Prospector : 48 ACCESS_MINING
Detective : 4 ACCESS_FORENSICS_LOCKERS
here's a tip, go search DEFINES/access.dm
*/

/*
Mayor
*/

/datum/job/oasis
	exp_type = EXP_TYPE_FALLOUT
	faction = FACTION_OASIS
	maptype = "yuma"
/*
/datum/job/oasis/f13mayor
	title = "Mayor"
	flag = F13MAYOR
	department_flag = DEP_OASIS
	total_positions = 0
	spawn_positions = 0
	supervisors = "Kebab"
	description = "You are the benevolent tyrant of Kebab, chosen by the people to represent and lead them. Pass laws to protect your citizens, distribute town funds and make deals with the powers present within the Region to better the people, and yourself, of course."
	selection_color = "#d7b088"

	exp_requirements = 1500

	outfit = /datum/outfit/job/den/f13mayor
	access = list(ACCESS_BAR, ACCESS_COMMAND, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_CLINIC, ACCESS_KITCHEN, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS)
	minimal_access = list(ACCESS_BAR, ACCESS_COMMAND, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_KITCHEN, ACCESS_CLINIC, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis,
		),
	)

	loadout_options = list(
			/datum/outfit/loadout/mayoral,
			/datum/outfit/loadout/dictator,
			/datum/outfit/loadout/firstcitizen,
			/datum/outfit/loadout/highroller,
					)


/datum/outfit/job/den/f13mayor/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)

/datum/outfit/job/den/f13mayor
	name = "Mayor"
	jobtype = /datum/job/oasis/f13mayor
	ears = 			/obj/item/radio/headset/headset_town
	id =            /obj/item/card/id/silver/mayor
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	l_pocket = /obj/item/storage/bag/money/small/oasis
	r_pocket = /obj/item/flashlight/seclite
	shoes = 		/obj/item/clothing/shoes/f13/tan
	uniform = /obj/item/clothing/under/f13/gentlesuit
	head = /obj/item/clothing/head/f13/town/big
	backpack_contents = list(
		/obj/item/storage/box/citizenship_permits = 1, \
		/obj/item/pen/fountain/captain = 1,
		/obj/item/gun/ballistic/automatic/wt550 = 1,
		/obj/item/ammo_box/magazine/m473/small = 2,
		)



/datum/outfit/loadout/dictator
	name = "Mayor for Life"
	backpack_contents = list(
	/obj/item/clothing/under/f13/general/oasis = 1,
	/obj/item/clothing/head/f13/army/general = 1,
	/obj/item/gun/ballistic/automatic/pistol/m1911/custom = 1,
	/obj/item/ammo_box/magazine/m45 = 2,
	/obj/item/clothing/shoes/jackboots = 1,
	/obj/item/clothing/mask/cigarette/pipe/cobpipe = 1,
	)

/datum/outfit/loadout/mayoral
	name = "Frontier Leader"
	backpack_contents = list(
		/obj/item/clothing/suit/armor/f13/town/mayor = 1,
		/obj/item/clothing/head/f13/town/mayor = 1,
		/obj/item/gun/ballistic/revolver/m29/snub = 1,
		/obj/item/ammo_box/m44 = 2,
		/obj/item/clothing/shoes/f13/cowboy = 1,
		/obj/item/clothing/mask/cigarette/cigar = 1,
		)

/datum/outfit/loadout/firstcitizen
	name = "First Citizen"
	backpack_contents = list(
		/obj/item/clothing/under/f13/vault = 1,
		/obj/item/clothing/shoes/jackboots = 1,
		/obj/item/clothing/suit/armor/f13/battlecoat/vault/overseer = 1,
		/obj/item/reagent_containers/food/drinks/flask/vault113,
		/obj/item/gun/energy/laser/pistol= 1,
		/obj/item/stock_parts/cell/ammo/ec = 1,
		)

/datum/outfit/loadout/highroller
	name = "High Roller"
	backpack_contents = list(
		/obj/item/clothing/glasses/orange = 1,
		/obj/item/clothing/suit/f13/vest = 1,
		/obj/item/clothing/under/f13/sleazeball = 1,
		/obj/item/clothing/shoes/laceup = 1,
		/obj/item/toy/cards/deck/unum = 1,
		/obj/item/gun/ballistic/automatic/pistol/type17 = 1,
		/obj/item/ammo_box/magazine/m10mm_adv/simple = 2,
	)

*/
/*--------------------------------------------------------------*/
/*
/datum/job/oasis/f13secretary
	title = "Secretary"
	flag = F13SECRETARY
	department_flag = DEP_OASIS
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Mayor"
	description = "You are the mayor's assistant, you help them with anything and everything they require and make sure trivial problems do not concern them. You handle clerical work, hear complaints, and set meetings. An efficient and smooth running town means a happy mayor."
	selection_color = "#d7b088"
	exp_requirements = 800

	outfit = /datum/outfit/job/den/f13secretary

	loadout_options = list(
	/datum/outfit/loadout/pr,
	/datum/outfit/loadout/pw,
	)

	access = list(ACCESS_BAR, ACCESS_COMMAND, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_CLINIC, ACCESS_KITCHEN, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS)
	minimal_access = list(ACCESS_BAR, ACCESS_COMMAND, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_KITCHEN, ACCESS_CLINIC, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis,
		),
	)

/datum/outfit/job/den/f13secretary
	name = "Secretary"
	jobtype = /datum/job/oasis/f13secretary

	ears = 			/obj/item/radio/headset/headset_town
	id =            /obj/item/card/id/silver
	glasses = /obj/item/clothing/glasses/regular/hipster
	gloves = /obj/item/clothing/gloves/color/white
	backpack = /obj/item/storage/backpack/satchel/leather
	satchel = /obj/item/storage/backpack/satchel/leather
	r_hand = /obj/item/storage/briefcase/secretary
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/seclite
	shoes = 		/obj/item/clothing/shoes/f13/fancy
	uniform = /obj/item/clothing/under/suit/black
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m9mm = 1,
		/obj/item/melee/onehanded/knife/switchblade = 1,
		/obj/item/pda = 1,
		)

/datum/outfit/loadout/pr
	name = "Public Relations"
	backpack_contents = list(
		/obj/item/megaphone = 1,
		/obj/item/reagent_containers/food/snacks/store/cake/birthday = 1,
		/obj/item/clothing/accessory/medal/ribbon = 1,
		/obj/item/clothing/gloves/color/latex/nitrile = 1,
		/obj/item/camera = 1,
		/obj/item/storage/crayons = 1,
		/obj/item/choice_beacon/box/carpet = 1,
		)

/datum/outfit/loadout/pw
	name = "Public Works"
	backpack_contents = list(
		/obj/item/clothing/head/hardhat = 1,
		/obj/item/clothing/suit/hazardvest = 1,
		/obj/item/stack/sheet/metal/twenty = 2,
		/obj/item/stack/sheet/glass/ten = 2,
		/obj/item/stack/sheet/mineral/concrete/ten = 2
		)

/datum/outfit/job/den/f13secretary/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/policepistol)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/policerifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/steelbib/heavy)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/armyhelmetheavy)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_SELF_AWARE, src)

*/
/*--------------------------------------------------------------*/
/*
/datum/job/oasis/f13sheriff
	title = "Chief of Police"
	flag = F13POLICECHIEF
	department_flag = DEP_OASIS
	head_announce = list("Security")
	total_positions = 1
	spawn_positions = 1
	supervisors = "Kebab Mayor"
	description = "You are the Mayor's goon (do not betray him). While they handle civil matters, you've been rewarded with more hands-on work, as preferred. With your loyal patrolmen, you maintain your claim to authority by keeping the peace, and protecting the citizens from threats within and without. Never leave Kebab undefended, and don't let its people die out. You have nowhere left to go, if this town falls, so will you."
	selection_color = "#d7b088"
	exp_requirements = 1500

	outfit = /datum/outfit/job/den/f13sheriff

	access = list(ACCESS_BAR, ACCESS_COMMAND, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_KITCHEN, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS)
	minimal_access = list(ACCESS_BAR, ACCESS_COMMAND, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_CLINIC, ACCESS_KITCHEN, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis,
		),
	)

/datum/outfit/job/den/f13sheriff
	name = "Chief of Police"
	jobtype = /datum/job/oasis/f13sheriff

	id = /obj/item/card/id/dogtag/sheriff
	belt = null
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	ears = /obj/item/radio/headset/headset_town
	uniform = /obj/item/clothing/under/f13/police/formal
	suit = /obj/item/clothing/suit/armor/f13/town/chief
	head = /obj/item/clothing/head/f13/town/chief
	neck = /obj/item/storage/belt/holster/legholster
	belt = /obj/item/storage/belt/military/army
	shoes = /obj/item/clothing/shoes/jackboots
	glasses = /obj/item/clothing/glasses/sunglasses
	l_pocket = /obj/item/storage/bag/money/small/den
	suit_store = /obj/item/gun/ballistic/automatic/assault_carbine/policerifle
	backpack_contents = list(
		/obj/item/storage/box/deputy_badges = 1,
		/obj/item/restraints/handcuffs = 2,
		/obj/item/melee/classic_baton = 1,
		/obj/item/melee/onehanded/knife/bowie = 1,
		/obj/item/ammo_box/magazine/m5mm = 1,
		/obj/item/grenade/flashbang = 1,
		)

/datum/outfit/job/den/f13sheriff/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/policepistol)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/policerifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/steelbib/heavy)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/armyhelmetheavy)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_SELF_AWARE, src)
*/
/*--------------------------------------------------------------*/
/datum/job/oasis/f13shopkeeper
	title = "Merchant"
	flag = F13SHOPKEEPER
	department_flag = DEP_OASIS
	total_positions = 1
	spawn_positions = 1
	supervisors = "free hand of the market"
	description = "The greed of the United States survived better than its people. You are an organ of this greed. Ensure its continuation."
	selection_color = "#dcba97"
	exp_requirements = 0

	outfit = /datum/outfit/job/den/f13shopkeeper
	access = list(ACCESS_BAR, ACCESS_CARGO_BOT, ACCESS_MINING, ACCESS_GATEWAY)
	minimal_access = list(ACCESS_BAR, ACCESS_CARGO_BOT, ACCESS_MINING, ACCESS_GATEWAY)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis,
		),
	)

/datum/outfit/job/den/f13shopkeeper
	name = "Shopkeeper"
	jobtype = /datum/job/oasis/f13shopkeeper

	id = /obj/item/card/id/dogtag/town
	shoes = /obj/item/clothing/shoes/f13/brownie
	uniform = /obj/item/clothing/under/f13/brahminbaron/foreign_suit
	head = /obj/item/clothing/head/helmet/f13/foreign_hat
	suit = /obj/item/clothing/suit/armor/f13/civilians/schlimmcoat
	ears = /obj/item/radio/headset/headset_merchant
	backpack = /obj/item/storage/backpack/satchel/leather/withwallet
	satchel = /obj/item/storage/backpack/satchel/leather/withwallet
	gloves = null
	l_pocket = null
	r_pocket = /obj/item/flashlight/glowstick
	backpack_contents = list(/obj/item/storage/bag/money/small/den = 1)

/datum/outfit/job/den/f13shopkeeper/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/policepistol)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/policerifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/steelbib/heavy)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/armyhelmetheavy)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/trail_carbine)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/lever_action)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/huntingrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/varmintrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/huntingshotgun)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/thatgun)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/frag_shrapnel)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/concussion)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/explosive/shrapnelmine)

/datum/outfit/job/den/f13shopkeeper/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

/*--------------------------------------------------------------*/

/datum/job/oasis/f13apprentice
	title = "Apprentice"
	flag = F13APPRENTICE
	department_flag = DEP_OASIS
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Merchant"
	description = "You are the merchant's right hand and heir apparent; handle the menial duties of running the store, arrange deals on the merchant's behalf, and set quotas for the slaves."
	selection_color = "#dcba97"
	exp_requirements = 0
	outfit = /datum/outfit/job/oasis/f13apprentice

	access = list(ACCESS_BAR, ACCESS_CARGO_BOT, ACCESS_GATEWAY, ACCESS_MINING)
	minimal_access = list(ACCESS_BAR, ACCESS_CARGO_BOT, ACCESS_GATEWAY, ACCESS_MINING)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis,
		),
	)
/datum/outfit/job/oasis/f13apprentice
	name = "Shop Assistant"
	jobtype = /datum/job/oasis/f13apprentice
	head = /obj/item/clothing/head/f13/ranger_hat/tan
	uniform = /obj/item/clothing/under/f13/ikeduds
	suit = /obj/item/clothing/suit/f13/cowboybvest
	belt = /obj/item/storage/belt/utility
	gloves = /obj/item/clothing/gloves/f13/blacksmith
	id = /obj/item/card/id/dogtag/town
	ears = /obj/item/radio/headset/headset_merchant
	shoes = /obj/item/clothing/shoes/workboots/mining
	r_pocket = /obj/item/flashlight/flare
	backpack = /obj/item/storage/backpack/satchel/leather
	satchel = /obj/item/storage/backpack/satchel/leather
	suit_store = /obj/item/gun/ballistic/shotgun/hunting
	backpack_contents = list(
		/obj/item/storage/bag/money/small/ = 1)



/datum/outfit/job/oasis/f13apprentice/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/policepistol)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/policerifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/steelbib/heavy)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/armyhelmetheavy)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/huntingrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/varmintrifle)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/huntingshotgun)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/thatgun)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/frag_shrapnel)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/concussion)

/datum/outfit/job/oasis/f13assist/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

/*--------------------------------------------------------------*/
/datum/job/oasis/f13deputy
	title = "Hired Gun"
	flag = F13POLICEMAN
	department_flag = DEP_OASIS
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Merchant"
	description = "You are a loyal hired gun of the Merchant; follow his bidding, keep his slaves in line, and make sure no one holds out payment from him."
	selection_color = "#dcba97"
	exp_type = EXP_TYPE_FALLOUT
	exp_requirements = 0

	outfit = /datum/outfit/job/oasis/f13deputy
	access = list(ACCESS_BAR, ACCESS_CARGO_BOT, ACCESS_MINING, ACCESS_GATEWAY)
	minimal_access = list(ACCESS_BAR, ACCESS_CARGO_BOT, ACCESS_MINING, ACCESS_GATEWAY)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis,
		),
	)

/datum/outfit/job/oasis/f13deputy
	name = "Merc"
	jobtype = /datum/job/oasis/f13deputy
	head = /obj/item/clothing/head/helmet/riot
	mask = /obj/item/clothing/mask/balaclava
	ears = /obj/item/radio/headset/headset_merchant
	id = /obj/item/card/id/dogtag/deputy
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	gloves = /obj/item/clothing/gloves/f13/military
	belt = /obj/item/storage/belt/military/assault
	suit = /obj/item/clothing/suit/armor/bulletproof
	neck = /obj/item/storage/belt/holster/legholster/police
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/flare
	shoes = /obj/item/clothing/shoes/f13/military
	uniform = /obj/item/clothing/under/f13/camo/desert
	suit_store = /obj/item/gun/ballistic/automatic/assault_carbine/policerifle
	backpack_contents = list(
		/obj/item/restraints/handcuffs = 2,
		/obj/item/ammo_box/magazine/m5mm = 2,
		/obj/item/melee/onehanded/knife/bowie = 1,
		/obj/item/grenade/flashbang = 1,
		)

/datum/outfit/job/den/f13deputy/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)



/*--------------------------------------------------------------*/

/datum/job/oasis/f13prospector
	title = "Indentured Servant"
	flag = F13PROSPECTOR
	department_flag = DEP_OASIS
	total_positions = 0
	spawn_positions = 0
	supervisors = "the Merchant"
	description = "You are the property of the merchant, but comparatively you are quite well off compared to those in the hands of the Legion, raiders, and those who dwell across the street. You may work in the house or be a hard laborer working in the mines or salvaging cars. Work hard enough and one day you may gain your freedom."
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/den/f13indenturedservant

	loadout_options = list(
		/datum/outfit/loadout/houseservant,
		/datum/outfit/loadout/miner,
		/datum/outfit/loadout/tribalservant,
		/datum/outfit/loadout/scrapper)

	access = list(ACCESS_BAR, ACCESS_MINING, ACCESS_CARGO_BOT)
	minimal_access = list(ACCESS_BAR, ACCESS_MINING, ACCESS_CARGO_BOT)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis,
		),
	)

/datum/outfit/job/den/f13indenturedservant
	name = "Indentured Servant"
	jobtype = /datum/job/oasis/f13prospector

	id = /obj/item/card/id/outcasttattoo
	ears = null
	shoes = null
	neck = /obj/item/electropack/shockcollar
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer

/datum/outfit/job/den/f13indenturedservant/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/f13/rag,
		/obj/item/clothing/under/f13/raiderrags,
		/obj/item/clothing/under/f13/raider_leather)

/datum/outfit/loadout/houseservant
	name = "House Servant"
	uniform = /obj/item/clothing/under/f13/relaxedwear
	shoes = /obj/item/clothing/shoes/f13/fancy
	backpack_contents = list(
		/obj/item/soap = 1)

/datum/outfit/loadout/tribalservant
	name = "Tribal Servant"
	uniform = /obj/item/clothing/under/f13/exile/tribal
	backpack_contents = list(
		/obj/item/soap = 1,
		/obj/item/warpaint_bowl = 1,)

/datum/outfit/loadout/miner
	name = "Miner"
	belt = /obj/item/storage/bag/ore
	shoes = /obj/item/clothing/shoes/jackboots
	backpack_contents = list(
		/obj/item/mining_scanner = 1,
		/obj/item/pickaxe = 1,)

/datum/outfit/loadout/scrapper
	name = "Scrapper"
	shoes = /obj/item/clothing/shoes/jackboots
	belt = /obj/item/storage/belt/utility/full
	head = /obj/item/clothing/head/welding/f13

/*--------------------------------------------------------------*/
/*
/datum/job/oasis/f13towndoctor
	title = "Town Doctor"
	flag = F13TOWNDOCTOR
	department_flag = DEP_OASIS
	total_positions = 3
	spawn_positions = 3
	supervisors = "Kebab Government & Police Department"
	description = "Handy with a scalpel and scanner, your expertise in the practice of medicine makes you an indispensible asset to the Town. Because you are independent, you are free to pick your patients and charge for your work."
	selection_color = "#dcba97"
	outfit = /datum/outfit/job/f13towndoctor
	loadout_options = list(
		/datum/outfit/loadout/towndoctor,
		/datum/outfit/loadout/followerdoctor,
		/datum/outfit/loadout/apothecary,
		/datum/outfit/loadout/nurse)
	access = list(ACCESS_BAR, ACCESS_CLINIC)
	minimal_access = list(ACCESS_BAR, ACCESS_CLINIC)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(/datum/job/wasteland/f13wastelander, /datum/job/oasis),
		/datum/matchmaking_pref/rival = list(/datum/job/wasteland/f13wastelander, /datum/job/oasis),
		/datum/matchmaking_pref/mentor = list(/datum/job/wasteland/f13wastelander, /datum/job/oasis),
		/datum/matchmaking_pref/disciple = list(/datum/job/wasteland/f13wastelander, /datum/job/oasis),
		/datum/matchmaking_pref/patron = list(/datum/job/wasteland/f13wastelander, /datum/job/oasis),
		/datum/matchmaking_pref/protegee = list(/datum/job/wasteland/f13wastelander, /datum/job/oasis))

/datum/outfit/job/f13towndoctor
	name = "Town Doctor"
	jobtype = /datum/job/oasis/f13towndoctor
	ears = /obj/item/radio/headset/headset_town
	neck = /obj/item/clothing/neck/stethoscope
	uniform = /obj/item/clothing/under/f13/medic
	gloves = /obj/item/pda/medical
	l_pocket = /obj/item/storage/bag/chemistry
	r_pocket = /obj/item/storage/bag/money/small/settler
	id = /obj/item/card/id/dogtag/town
	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel/med
	duffelbag =	/obj/item/storage/backpack/duffelbag/med

/datum/outfit/loadout/towndoctor
	name = "Town Doctor"
	uniform = /obj/item/clothing/under/f13/doctor
	suit = /obj/item/clothing/suit/flakjack
	shoes = /obj/item/clothing/shoes/jackboots
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/pistol/m1911/custom = 1,
		/obj/item/ammo_box/magazine/m45 = 3,
		/obj/item/stack/medical/bruise_pack = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 4)

/datum/outfit/loadout/followerdoctor
	name = "Follower of the Apocalypse"
	glasses =	/obj/item/clothing/glasses/hud/health
	uniform =	/obj/item/clothing/under/f13/followers
	suit =	/obj/item/clothing/suit/toggle/labcoat/f13/followers
	shoes = /obj/item/clothing/shoes/sneakers/white
	backpack_contents = list(
		/obj/item/retractor/advanced = 1,
		/obj/item/reagent_containers/medspray/synthflesh = 2,
		/obj/item/storage/firstaid/regular = 1)

/datum/outfit/loadout/apothecary
	name = "Apothecary"
	head = /obj/item/clothing/head/plaguedoctorhat
	mask = /obj/item/clothing/mask/gas/plaguedoctor
	suit = /obj/item/clothing/suit/bio_suit/plaguedoctorsuit
	shoes = /obj/item/clothing/shoes/sandal
	backpack_contents = list(
		/obj/item/reagent_containers/glass/primitive_chem_isolator = 1,
		/obj/item/reagent_containers/glass/mortar = 1,
		/obj/item/storage/box/medicine/poultice5 = 1,
		/obj/item/storage/box/medicine/poultice5 = 1)

/datum/outfit/loadout/nurse
	name = "Nurse"
	head = /obj/item/clothing/head/nursehat
	uniform = /obj/item/clothing/under/rank/nursesuit
	shoes = /obj/item/clothing/shoes/sneakers/white
	backpack_contents = list(
		/obj/item/flashlight/pen = 1,
		/obj/item/reagent_containers/food/snacks/lollipop = 5,
		/obj/item/stack/medical/suture/medicated = 1,
		/obj/item/stack/medical/mesh/advanced = 1,
		/obj/item/hypospray/mkii/CMO = 1)

/datum/outfit/job/f13towndoctor/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_SURGERY_HIGH, src)
	ADD_TRAIT(H, TRAIT_MEDICALGRADUATE, src)
	ADD_TRAIT(H, TRAIT_MEDICALEXPERT, src)
*/

//--------------------------------------------------//
/*
/datum/job/oasis/f13preacher
	title = "Preacher"
	flag = F13PREACHER
	faction = DEP_OASIS
	total_positions = 0
	spawn_positions = 0
	supervisors = "God"
	description = "You are the last bastion of faith in this God-forsaken Wasteland. Spread your word and preach to the faithless."
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/f13preacher

	loadout_options = list(
	/datum/outfit/loadout/crusader, 	//This is kinda a given. You bet.
	/datum/outfit/loadout/samaritan, 	//Water and food to share with the wastes.
	/datum/outfit/loadout/cleanser		//Just some bombs.
	)

	access = list(ACCESS_BAR, ACCESS_CHAPEL_OFFICE)
	minimal_access = list(ACCESS_BAR, ACCESS_CHAPEL_OFFICE)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(/datum/job/wasteland/f13wastelander, /datum/job/oasis),
		/datum/matchmaking_pref/rival = list(/datum/job/wasteland/f13wastelander, /datum/job/oasis),
		/datum/matchmaking_pref/mentor = list(/datum/job/wasteland/f13wastelander, /datum/job/oasis),
		/datum/matchmaking_pref/disciple = list(/datum/job/wasteland/f13wastelander, /datum/job/oasis),
		/datum/matchmaking_pref/patron = list(/datum/job/wasteland/f13wastelander, /datum/job/oasis),
		/datum/matchmaking_pref/protegee = list(/datum/job/wasteland/f13wastelander, /datum/job/oasis))



/datum/outfit/loadout/crusader
	name = "Crusader"
	backpack_contents = list(
		/obj/item/clothing/suit/armor/knight = 1,
		/obj/item/clothing/head/helmet/knight/red = 1,
		/obj/item/melee/onehanded/machete = 1,
	)

/datum/outfit/loadout/samaritan
	name = "Samaritan"
	backpack_contents = list(
		/obj/item/reagent_containers/food/snacks/store/bread/plain = 5,
		/obj/item/reagent_containers/food/snacks/fishmeat/salmon = 2,
		/obj/item/reagent_containers/glass/beaker/waterbottle = 2,
		/obj/item/nullrod = 1,
	)	//Matthew 14:17 RSVCE and KJV - Kitsunemitsu

/datum/outfit/loadout/cleanser
	name = "Cleanser"
	backpack_contents = list(
		/obj/item/grenade/homemade/coffeepotbomb = 2,	//This is funny. I swear guys.
		/obj/item/gun/ballistic/revolver/m29 = 1,		//Moved here for more *variety*
		/obj/item/ammo_box/m44 = 2
	)


/datum/job/oasis/f13preacher/after_spawn(mob/living/H, mob/M)
	. = ..()
	if(H.mind)
		H.mind.isholy = TRUE

	var/obj/item/storage/book/bible/booze/B = new

	if(GLOB.religion)
		B.deity_name = GLOB.deity
		B.name = GLOB.bible_name
		B.icon_state = GLOB.bible_icon_state
		B.item_state = GLOB.bible_item_state
		to_chat(H, "There is already an established religion onboard the station. You are an acolyte of [GLOB.deity]. Defer to the Chaplain.")
		H.equip_to_slot_or_del(B, SLOT_IN_BACKPACK)
		var/nrt = GLOB.holy_weapon_type || /obj/item/nullrod
		var/obj/item/nullrod/N = new nrt(H)
		H.put_in_hands(N)
		return

	var/new_religion = DEFAULT_RELIGION
	if(M.client && M.client.prefs.custom_names["religion"])
		new_religion = M.client.prefs.custom_names["religion"]

	var/new_deity = DEFAULT_DEITY
	if(M.client && M.client.prefs.custom_names["deity"])
		new_deity = M.client.prefs.custom_names["deity"]

	B.deity_name = new_deity


	switch(lowertext(new_religion))
		if("christianity") // DEFAULT_RELIGION
			B.name = pick("The Holy Bible","The Dead Sea Scrolls")
		if("buddhism")
			B.name = "The Sutras"
		if("clownism","honkmother","honk","honkism","comedy")
			B.name = pick("The Holy Joke Book", "Just a Prank", "Hymns to the Honkmother")
		if("chaos")
			B.name = "The Book of Lorgar"
		if("cthulhu")
			B.name = "The Necronomicon"
		if("hinduism")
			B.name = "The Vedas"
		if("homosexuality")
			B.name = pick("Guys Gone Wild","Coming Out of The Closet")
		if("imperium")
			B.name = "Uplifting Primer"
		if("islam")
			B.name = "Quran"
		if("judaism")
			B.name = "The Torah"
		if("lampism")
			B.name = "Fluorescent Incandescence"
		if("lol", "wtf", "gay", "penis", "ass", "poo", "badmin", "shitmin", "deadmin", "cock", "cocks", "meme", "memes")
			B.name = pick("Woodys Got Wood: The Aftermath", "War of the Cocks", "Sweet Bro and Hella Jef: Expanded Edition", "F.A.T.A.L. Rulebook")
			H.adjustOrganLoss(ORGAN_SLOT_BRAIN, 100) // starts off dumb as fuck
		if("monkeyism","apism","gorillism","primatism")
			B.name = pick("Going Bananas", "Bananas Out For Harambe")
		if("mormonism")
			B.name = "The Book of Mormon"
		if("pastafarianism")
			B.name = "The Gospel of the Flying Spaghetti Monster"
		if("rastafarianism","rasta")
			B.name = "The Holy Piby"
		if("satanism")
			B.name = "The Unholy Bible"
		if("science")
			B.name = pick("Principle of Relativity", "Quantum Enigma: Physics Encounters Consciousness", "Programming the Universe", "Quantum Physics and Theology", "String Theory for Dummies", "How To: Build Your Own Warp Drive", "The Mysteries of Bluespace", "Playing God: Collector's Edition")
		if("scientology")
			B.name = pick("The Biography of L. Ron Hubbard","Dianetics")
		if("servicianism", "partying")
			B.name = "The Tenets of Servicia"
			B.deity_name = pick("Servicia", "Space Bacchus", "Space Dionysus")
			B.desc = "Happy, Full, Clean. Live it and give it."
		if("subgenius")
			B.name = "Book of the SubGenius"
		if("toolboxia","greytide")
			B.name = pick("Toolbox Manifesto","iGlove Assistants")
		if("weeaboo","kawaii")
			B.name = pick("Fanfiction Compendium","Japanese for Dummies","The Manganomicon","Establishing Your O.T.P")
		else
			B.name = "The Holy Book of [new_religion]"

	GLOB.religion = new_religion
	GLOB.bible_name = B.name
	GLOB.deity = B.deity_name

	H.equip_to_slot_or_del(B, SLOT_IN_BACKPACK)

	SSblackbox.record_feedback("text", "religion_name", 1, "[new_religion]", 1)
	SSblackbox.record_feedback("text", "religion_deity", 1, "[new_deity]", 1)


/datum/outfit/job/f13preacher
	name = "Preacher"
	jobtype = /datum/job/oasis/f13preacher
	id =	/obj/item/card/id/dogtag/town
	ears = /obj/item/radio/headset/headset_town
	uniform = /obj/item/clothing/under/f13/chaplain
	gloves =	/obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots
	r_pocket = /obj/item/flashlight/flare
	backpack =	/obj/item/storage/backpack/cultpack
	satchel = /obj/item/storage/backpack/cultpack
	backpack_contents = list(
		/obj/item/camera/spooky = 1,
		/obj/item/reagent_containers/food/drinks/flask = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2,
		/obj/item/storage/fancy/candle_box = 1,
		/obj/item/storage/bag/money/small/settler
		)
*/
/*--------------------------------------------------------------*/
/*
/datum/job/oasis/f13barkeep
	title = "Barkeep"
	flag = F13BARKEEP
	department_flag = DEP_OASIS
	total_positions = 0
	spawn_positions = 0
	supervisors = "Den boss"
	description = "You are an employee of the Den in charge of managing the Kebab Casino . Under the protection of your benefactors you are free to do mostly as you please but are expected to pay up to the boss."
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/den/f13barkeep

	loadout_options = list(
	/datum/outfit/loadout/rugged,
	/datum/outfit/loadout/frontier,
	/datum/outfit/loadout/richmantender,
	/datum/outfit/loadout/diner)

	access = list(ACCESS_DEN)
	minimal_access = list(ACCESS_DEN)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis,
		),
	)


/datum/outfit/job/den/f13barkeep
	name = "Barkeep"
	jobtype = /datum/job/oasis/f13barkeep

	uniform = /obj/item/clothing/under/f13/bartenderalt
	id = /obj/item/card/id/dogtag/town
	ears = /obj/item/radio/headset/headset_town
	belt = /obj/item/gun/ballistic/revolver/caravan_shotgun
	shoes = /obj/item/clothing/shoes/workboots/mining
	backpack = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(
		/obj/item/storage/bag/money/small/settler = 1,
		/obj/item/book/granter/action/drink_fling = 1,
		/obj/item/ammo_box/shotgun/bean = 2,
		/obj/item/book/manual/nuka_recipes = 1,
		/obj/item/stack/f13Cash/caps/onezerozero = 1,
		/obj/item/reagent_containers/food/drinks/bottle/rotgut = 1,
		)

/datum/outfit/loadout/rugged
	name = "Rugged"
	head = /obj/item/clothing/head/helmet/f13/brahmincowboyhat
	uniform = /obj/item/clothing/under/f13/cowboyb
	suit = /obj/item/clothing/suit/f13/cowboybvest
	gloves = /obj/item/clothing/gloves/color/brown
	shoes = /obj/item/clothing/shoes/f13/brownie

/datum/outfit/loadout/frontier
	name = "Frontier"
	head = /obj/item/clothing/head/bowler
	mask = /obj/item/clothing/mask/fakemoustache
	uniform = /obj/item/clothing/under/f13/westender
	suit = /obj/item/clothing/suit/f13/westender
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/f13/fancy

/datum/outfit/loadout/richmantender
	name = "Fancy"
	head = /obj/item/clothing/head/fedora
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/rank/bartender
	suit = /obj/item/clothing/suit/toggle/lawyer/black
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/f13/fancy
	neck = /obj/item/clothing/neck/tie/black

/datum/outfit/loadout/diner
	name = "Diner"
	glasses = /obj/item/clothing/glasses/orange
	uniform = /obj/item/clothing/under/f13/brahminf
	neck = /obj/item/clothing/neck/apron/chef
	gloves = /obj/item/clothing/gloves/color/white
	shoes = /obj/item/clothing/shoes/f13/military/ncr
*/
/*----------------------------------------------------------------
--							Detective							--
----------------------------------------------------------------*/
/datum/job/oasis/f13detective
	title = "Detective"
	flag = F13DETECTIVE
	total_positions = 0
	spawn_positions = 0
	description = "As a Detective you are a private eye who assists clients to gather evidence, conduct surveillance, find missing people, and verify information. As a private investigator you are not responsible for peacekeeping the valley, but for finding answers. Your life is already over, make the ending mean something."
	supervisors = "paying clients"
	selection_color = "#dcba97"
	outfit = /datum/outfit/job/oasis/f13detective

	access = list(ACCESS_BAR, ACCESS_FORENSICS_LOCKERS)
	minimal_access = list(ACCESS_BAR, ACCESS_FORENSICS_LOCKERS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/oasis/f13detective,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/wasteland/f13wastelander,
			/datum/job/oasis/f13detective,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/wasteland/f13wastelander,
		),
	)


/datum/outfit/job/oasis/f13detective
	name = "Detective"
	jobtype = /datum/job/oasis/f13detective
	suit = /obj/item/clothing/suit/det_suit/grey
	ears = /obj/item/radio/headset/headset_town
	uniform = /obj/item/clothing/under/f13/detectivealt
	head = /obj/item/clothing/head/f13/det_hat_alt
	shoes =  /obj/item/clothing/shoes/laceup
	id = /obj/item/card/id/silver
	l_pocket = /obj/item/storage/bag/money/small/oasis
	r_pocket = /obj/item/flashlight/flare
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	suit_store = /obj/item/gun/ballistic/revolver/police
	backpack_contents = list(
		/obj/item/pda/detective=1,
		/obj/item/camera/detective=1,
		/obj/item/toy/crayon/white=1,
		/obj/item/detective_scanner=1,
		/obj/item/storage/box/gloves=1,
		/obj/item/storage/box/evidence=1,
		/obj/item/ammo_box/a357=2)

/*--------------------------------------------------------------*/

/datum/job/oasis/f13kebabhighpriest
	title = "High Priest"
	flag = F13KEBABHIGHPRIEST
	head_announce = list("Security")
	department_flag = DEP_OASIS
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Holy Father"
	req_admin_notify = 1
	description = "You are the leader of the Church, at least for now. Your sworn duty is to expand and protect the faith, through any means necessary, in preparation for the day of retribution that is to come. You are the spiritual leader of the faith, and are expected to give sermons, advise members, and perform all major rituals. You are beholden to no one but the Father above, and the Servitors answer directly to you."
	selection_color = "#d580ff"
	forbids = "Exposing the secrets of the Church, fraternizing with the NCR, treating patients for nothing in return, consuming alcohol, and using chems."
	enforces = "Preaching the faith, following the faith's internal structure and rules."
	exp_requirements = 0

	outfit = /datum/outfit/job/cotc/f13kebabhighpriest
	access = list(ACCESS_COTC, ACCESS_COTC_ARMORY, ACCESS_COTC_SECRET)
	minimal_access = list(ACCESS_COTC, ACCESS_COTC_ARMORY, ACCESS_COTC_SECRET)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis,
		),
	)

/datum/outfit/job/cotc/f13kebabhighpriest
	name = "High Priest"
	jobtype = /datum/job/oasis/f13kebabhighpriest

	id = /obj/item/card/id/dogtag/town
	uniform = /obj/item/clothing/under/f13/religion/priest
	suit = /obj/item/clothing/suit/hooded/robes/cotc/highpriest
	suit_store = /obj/item/gun/energy/laser/plasma/pistol
	ears = /obj/item/radio/headset/headset_church
	backpack = /obj/item/storage/backpack/satchel/leather
	satchel = /obj/item/storage/backpack/satchel/leather
	duffelbag = /obj/item/storage/backpack/duffelbag
	gloves = null
	l_pocket = /obj/item/storage/bag/money/small/den
	r_pocket = /obj/item/flashlight/glowstick
	shoes = /obj/item/clothing/shoes/laceup
	backpack_contents = list(
		/obj/item/book/manual/thebook = 1,
		/obj/item/book/manual/thebook/purple = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 1,
		/obj/item/storage/fancy/candle_box = 1,
		/obj/item/stock_parts/cell/ammo/ec = 2,
		/obj/item/storage/bag/money/small/settler
		)
/datum/outfit/job/cotc/f13kebabhighpriest/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.grant_language(/datum/language/shorthand)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_MEDICALEXPERT, src)
	ADD_TRAIT(H, TRAIT_SURGERY_MID, src)
	ADD_TRAIT(H, TRAIT_MACHINE_SPIRITS, src)


/*--------------------------------------------------------------*/

/datum/job/oasis/f13kebabservitormedici
	title = "Servitor Medici"
	flag = F13KEBABSERVITORMEDICI
	department_flag = DEP_OASIS
	total_positions = 1
	spawn_positions = 1
	supervisors = "the High Priest and the All Father"
	description = "You are an inducted member of the Church’s inner circle, sworn to direct the medical arm of the faith. You are expected to be knowledgeable about all medical matters, and to put the interests of your faith above those of your patients. Your role is to direct the Acolytes and ensure they provide excellent care while staying true to Church dogma."
	selection_color = "#d580ff"
	forbids = "Exposing the secrets of the Church, fraternizing with the NCR, treating patients for nothing in return, consuming alcohol, and using chems."
	enforces = "Preaching the faith, following the faith's internal structure and rules."
	exp_requirements = 0

	outfit = /datum/outfit/job/cotc/f13kebabservitormedici
	access = list(ACCESS_COTC, ACCESS_COTC_ARMORY, ACCESS_COTC_SECRET)
	minimal_access = list(ACCESS_COTC, ACCESS_COTC_ARMORY, ACCESS_COTC_SECRET)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis,
		),
	)

/datum/outfit/job/cotc/f13kebabservitormedici
	name = "Servitor Medici"
	jobtype = /datum/job/oasis/f13kebabservitormedici

	id = /obj/item/card/id/dogtag/town
	uniform = /obj/item/clothing/under/f13/religion/priest
	suit = /obj/item/clothing/suit/hooded/robes/cotc/servitor
	suit_store = /obj/item/gun/energy/laser/wattz
	ears = /obj/item/radio/headset/headset_church
	backpack = /obj/item/storage/backpack/satchel/leather
	satchel = /obj/item/storage/backpack/satchel/leather
	duffelbag =	/obj/item/storage/backpack/duffelbag/med
	gloves = null
	l_pocket = null
	r_pocket = null
	shoes = /obj/item/clothing/shoes/laceup
	backpack_contents = list(
		/obj/item/book/manual/thebook = 1,
		/obj/item/melee/onehanded/knife/hunting = 1,
		/obj/item/stack/medical/bruise_pack = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2
		)

/datum/outfit/job/cotc/f13kebabservitormedici/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.grant_language(/datum/language/shorthand)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_MEDICALEXPERT, src)
	ADD_TRAIT(H, TRAIT_SURGERY_HIGH, src)
	ADD_TRAIT(H, TRAIT_MACHINE_SPIRITS, src)

/*--------------------------------------------------------------*/

/datum/job/oasis/f13kebabservitormilitant
	title = "Servitor Militant"
	flag = F13KEBABSERVITORMILITANT
	department_flag = DEP_OASIS
	total_positions = 1
	spawn_positions = 1
	supervisors = "the High Priest and the All Father"
	description = "You are an inducted member of the Church’s inner circle, sworn to lead the faith’s military forces into battle. You know much of the secrets that dwell within the Faith’s inner sanctum, and you know what is at stake if they are discovered. You directly command the Church’s Proselytizers, and answer directly to the High Priest."
	selection_color = "#d580ff"
	forbids = "Exposing the secrets of the Church, fraternizing with the NCR, treating patients for nothing in return, consuming alcohol, and using chems."
	enforces = "Preaching the faith, following the faith's internal structure and rules."
	exp_requirements = 0

	outfit = /datum/outfit/job/cotc/f13kebabservitormilitant
	access = list(ACCESS_COTC, ACCESS_COTC_ARMORY, ACCESS_COTC_SECRET)
	minimal_access = list(ACCESS_COTC, ACCESS_COTC_ARMORY, ACCESS_COTC_SECRET)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis,
		),
	)

/datum/outfit/job/cotc/f13kebabservitormilitant
	name = "Servitor Militant"
	jobtype = /datum/job/oasis/f13kebabservitormilitant

	id = /obj/item/card/id/dogtag/town
	uniform = /obj/item/clothing/under/f13/religion/priest
	suit = /obj/item/clothing/suit/hooded/robes/cotc/servitor
	suit_store = /obj/item/gun/energy/laser/wattz2k
	ears = /obj/item/radio/headset/headset_church
	backpack = /obj/item/storage/backpack/satchel/leather
	satchel = /obj/item/storage/backpack/satchel/leather
	duffelbag = /obj/item/storage/backpack/duffelbag
	gloves = null
	l_pocket = null
	r_pocket = null
	shoes = /obj/item/clothing/shoes/laceup
	backpack_contents = list(
		/obj/item/book/manual/thebook = 1,
		/obj/item/melee/classic_baton = 1,
		/obj/item/stock_parts/cell/ammo/mfc = 2,
		/obj/item/stack/medical/bruise_pack = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 1
		)

/datum/outfit/job/cotc/f13kebabservitormilitant/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.grant_language(/datum/language/shorthand)

/*--------------------------------------------------------------*/

/datum/job/oasis/f13kebabproselytizer
	title = "Proselytizer"
	flag = F13KEBABPROSELYTIZER
	department_flag = DEP_OASIS
	total_positions = 2
	spawn_positions = 2
	supervisors = "the High Priest and the All Father"
	description = "You are the strong right arm of the Church. You answer directly to the Servitor Militant. Your role is to guard the Church, put pressure upon outsiders, drum up business with your bludgeon, and collect debts."
	selection_color = "#d580ff"
	forbids = "Exposing the secrets of the Church, fraternizing with the NCR, treating patients for nothing in return, consuming alcohol, and using chems."
	enforces = "Preaching the faith, following the faith's internal structure and rules."
	exp_requirements = 0

	outfit = /datum/outfit/job/cotc/f13kebabproselytizer
	access = list(ACCESS_COTC, ACCESS_COTC_ARMORY)
	minimal_access = list(ACCESS_COTC, ACCESS_COTC_ARMORY)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis,
		),
	)

/datum/outfit/job/cotc/f13kebabproselytizer
	name = "Proselytizer"
	jobtype = /datum/job/oasis/f13kebabproselytizer

	id = /obj/item/card/id/dogtag/town
	uniform = /obj/item/clothing/under/f13/brahminm
	suit = /obj/item/clothing/suit/hooded/robes/cotc/proselytizer
	suit_store = /obj/item/gun/energy/laser/wattz
	ears = /obj/item/radio/headset/headset_church
	backpack = /obj/item/storage/backpack/satchel/sec
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag
	gloves = null
	l_pocket = null
	r_pocket = null
	shoes = /obj/item/clothing/shoes/f13/rag
	backpack_contents = list(
		/obj/item/book/manual/thebook = 1,
		/obj/item/melee/classic_baton = 1,
		/obj/item/restraints/handcuffs/cable = 1,
		/obj/item/stock_parts/cell/ammo/ec = 2,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 1
		)

/*--------------------------------------------------------------*/

/datum/job/oasis/f13kebabacolyte
	title = "Acolyte"
	flag = F13KEBABACOLYTE
	department_flag = DEP_OASIS
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Servitor Medici and the All Father"
	description = "You are a trained healer and a sworn member of the Church. You follow all orders given to you by the Servitor Medici and the High Priest. The faith does not give medical services freely, those who are unable to pay will be held in the Church until their medical fees are paid, or they agree to join the faith."
	selection_color = "#d580ff"
	forbids = "Exposing the secrets of the Church, fraternizing with the NCR, treating patients for nothing in return, consuming alcohol, and using chems."
	enforces = "Preaching the faith, following the faith's internal structure and rules."
	exp_requirements = 0

	outfit = /datum/outfit/job/cotc/f13kebabacolyte
	access = list(ACCESS_COTC, ACCESS_COTC_ARMORY)
	minimal_access = list(ACCESS_COTC, ACCESS_COTC_ARMORY)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis,
		),
	)

/datum/outfit/job/cotc/f13kebabacolyte
	name = "Acolyte"
	jobtype = /datum/job/oasis/f13kebabacolyte

	id = /obj/item/card/id/dogtag/town
	uniform = /obj/item/clothing/under/f13/brahminm
	suit = /obj/item/clothing/suit/hooded/robes/cotc/acolyte
	suit_store = null
	ears = /obj/item/radio/headset/headset_church
	backpack = /obj/item/storage/backpack/satchel/med
	satchel = /obj/item/storage/backpack/satchel/med
	duffelbag =	/obj/item/storage/backpack/duffelbag/med
	gloves = null
	l_pocket = null
	r_pocket = null
	shoes = /obj/item/clothing/shoes/f13/rag
	backpack_contents = list(
		/obj/item/book/manual/thebook = 1,
		/obj/item/stack/medical/bruise_pack = 1,
		/obj/item/restraints/handcuffs/cable = 1,
		/obj/item/melee/onehanded/knife/hunting = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 1
		)

/datum/outfit/job/cotc/f13kebabacolyte/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_MEDICALEXPERT, src)
	ADD_TRAIT(H, TRAIT_SURGERY_MID, src)
	ADD_TRAIT(H, TRAIT_MACHINE_SPIRITS, src)

/*--------------------------------------------------------------*/

/datum/job/oasis/f13farmer
	title = "Neophyte"
	flag = F13FARMER
	department_flag = DEP_OASIS
	total_positions = 4
	spawn_positions = 4
	supervisors = "Servitors and up"
	description = "By some means or another you have become indebted to the Church. There was none to pay your debt, so all that was left was to give your body and mind to the Church. Attend to menial duties such as cleaning, farming, and cooking."
	selection_color = "#d580ff"
	forbids = "Exposing the secrets of the Church, fraternizing with the NCR, treating patients for nothing in return, consuming alcohol, and using chems."
	enforces = "Preaching the faith, following the faith's internal structure and rules."

	outfit = /datum/outfit/job/cotc/neophyte

	access = list(ACCESS_COTC)
	minimal_access = list(ACCESS_COTC)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis,
		),
	)

/datum/outfit/job/cotc/neophyte
	name = "Neophyte"
	jobtype = /datum/job/oasis/f13farmer

	id = /obj/item/card/id/dogtag/town
	ears = 	/obj/item/radio/headset/headset_church
	suit = /obj/item/clothing/suit/hooded/robes/cotc
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	l_pocket = null
	r_pocket = /obj/item/flashlight/flare
	belt = /obj/item/storage/bag/plants
	shoes = /obj/item/clothing/shoes/f13/rag
	backpack_contents = list(
		/obj/item/cultivator=1, \
		/obj/item/hatchet=1,
		/obj/item/shovel/spade=1)

/datum/outfit/job/cotc/neophyte/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/f13/settler,
		/obj/item/clothing/under/f13/brahminm,
		/obj/item/clothing/under/f13/machinist,
		/obj/item/clothing/under/f13/lumberjack,
		/obj/item/clothing/under/f13/roving)

/*--------------------------------------------------------------*/

/datum/job/oasis/f13pitmaster
	title = "Pitmaster"
	flag = F13PITMASTER
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 1
	spawn_positions = 1
	description = "A veteran of the Pit-Rats, you have long outlived your rivals to the position by promising those below you with booze and entertainment, many years were spent achieving this role of honour. You are the head honcho of the Pit-Rats, you own the pit and the rats, organize fights and the capturing of slaves, take bets, and ensure your rats are topped up with booze, we wouldn't want one getting too antsy and thinking they can take your position."
	supervisors = "no one."
	req_admin_notify = 1
	selection_color = "#ff8080"
	exp_requirements = 0
	exp_type = EXP_TYPE_WASTELAND
	forbids = "Cowardice, soberiety, and fruit juice."
	enforces = "Loyalty to the Pitmaster, alcoholism, violence, and challenging a fellow Pit-Rat to a duel to the death for their rank in the pit when dissatisfied with their performance."

	outfit = /datum/outfit/job/oasis/f13pitmaster

	access = list(ACCESS_DEN)
	minimal_access = list(ACCESS_DEN)

/datum/outfit/job/oasis/f13pitmaster
	name = "Pitmaster"
	jobtype = /datum/job/oasis/f13pitmaster

	id = /obj/item/card/id/denid
	belt = /obj/item/storage/belt/military/assault
	shoes = /obj/item/clothing/shoes/jackboots
	ears = /obj/item/radio/headset/headset_pitrats
	l_pocket = /obj/item/melee/onehanded/knife/switchblade
	r_pocket = /obj/item/flashlight/seclite
	uniform = /obj/item/clothing/under/jabroni
	backpack =	/obj/item/storage/backpack/satchel
	satchel =  /obj/item/storage/backpack/satchel
	gloves =  null
	head = /obj/item/clothing/head/helmet/f13/metalmask
	suit = /obj/item/clothing/suit/armor/f13/metalarmor
	backpack_contents = list(
		/obj/item/restraints/handcuffs = 1,
		/obj/item/storage/bag/money/small/wastelander = 1
		)

/datum/outfit/job/oasis/f13pitmaster/pre_equip(mob/living/carbon/human/H)
	. = ..()

	r_hand = pick(
		/obj/item/storage/box/gunbox/pitrats/pitmaster/set1,	//powerfist
		/obj/item/storage/box/gunbox/pitrats/pitmaster/set2,	//ripper, 357 magnum
		/obj/item/storage/box/gunbox/pitrats/pitmaster/set3)	//katana

/*--------------------------------------------------------------*/

/datum/job/oasis/f13champion
	title = "Champion"
	flag = F13CHAMPION
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 1
	spawn_positions = 1
	description = "A grizzled veteran of the Pit, you are the strongest and one of the moral loyal pitrats, having sworn an oath to the pitmaster. You are to fight in the pit, maintain the pitmaster's authority, and dispose of anyone who displeases him."
	supervisors = "the Pitmaster."
	selection_color = "#ff8080"
	exp_requirements = 0
	exp_type = EXP_TYPE_WASTELAND
	forbids = "Cowardice, soberiety, and fruit juice."
	enforces = "Loyalty to the Pitmaster, alcoholism, violence, and challenging a fellow Pit-Rat to a duel to the death for their rank in the pit when dissatisfied with their performance."

	outfit = /datum/outfit/job/oasis/f13champion

	access = list(ACCESS_DEN)
	minimal_access = list(ACCESS_DEN)

/datum/outfit/job/oasis/f13champion
	name = "Champion"
	jobtype = /datum/job/oasis/f13champion

	id = /obj/item/card/id/denid
	belt = null
	shoes = /obj/item/clothing/shoes/f13/military/plated
	ears = /obj/item/radio/headset/headset_pitrats
	l_pocket = /obj/item/melee/onehanded/knife/switchblade
	r_pocket = /obj/item/flashlight/seclite
	uniform = /obj/item/clothing/under/jabroni
	suit = /obj/item/clothing/suit/armor/f13/pitrat/champ
	backpack =	/obj/item/storage/backpack/satchel
	satchel =  /obj/item/storage/backpack/satchel
	gloves =  /obj/item/clothing/gloves/legion/plated
	head = /obj/item/clothing/head/f13/pitrat/champ
	mask =  null
	backpack_contents = list(
		/obj/item/restraints/handcuffs = 1,
		/obj/item/storage/bag/money/small/wastelander = 1
		)
/datum/outfit/job/oasis/f13champion/pre_equip(mob/living/carbon/human/H)
	. = ..()

	r_hand = pick(
		/obj/item/storage/box/gunbox/pitrats/champion/set1,	//cqc
		/obj/item/storage/box/gunbox/pitrats/champion/set2,	//bumper sword
		/obj/item/storage/box/gunbox/pitrats/champion/set3,	//super sledge
		/obj/item/storage/box/gunbox/pitrats/champion/set4,	//chainsaw
		/obj/item/storage/box/gunbox/pitrats/champion/set5)	//protonaxe

/*--------------------------------------------------------------*/


/datum/job/oasis/f13bookie
	title = "Bookie"
	flag = F13BOOKIE
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 0
	spawn_positions = 0
	description = "Left unable to fight in the ring by some prior event, the Pit Rats have relegated you to the status of bookie. You are responsible for determining odds on fights, making advertisement posters, taking bets, lending money, selling tickets, and watching the front doors. While your days in the ring are over, your shrewd accounting of the Pit Rat finances are what allows the gang to flourish, and your tight-fisted behavior with loans has allowed the gang to open a profitable loan shark side buisness."
	supervisors = "the Pitmaster."
	selection_color = "#ff8080"
	exp_requirements = 0
	exp_type = EXP_TYPE_WASTELAND
	forbids = "Cowardice, soberiety, and fruit juice."
	enforces = "Loyalty to the Pitmaster, alcoholism, violence, and challenging a fellow Pit-Rat to a duel to the death for their rank in the pit when dissatisfied with their performance."

	outfit = /datum/outfit/job/oasis/f13bookie

	access = list(ACCESS_DEN)
	minimal_access = list(ACCESS_DEN)

/datum/outfit/job/oasis/f13bookie
	name = "Bookie"
	jobtype = /datum/job/oasis/f13bookie

	id = /obj/item/card/id/denid
	belt = null
	shoes = /obj/item/clothing/shoes/jackboots
	ears = /obj/item/radio/headset/headset_pitrats
	l_pocket = /obj/item/melee/onehanded/knife/switchblade
	r_pocket = /obj/item/flashlight/seclite
	uniform = /obj/item/clothing/under/jabroni
	suit = /obj/item/clothing/suit/armor/bulletproof
	backpack =	/obj/item/storage/backpack/satchel/explorer
	satchel =  /obj/item/storage/backpack/satchel/explorer
	gloves =  null
	head = null
	mask =  null
	glasses = /obj/item/clothing/glasses/legiongoggles
	backpack_contents = list(
	/obj/item/pen = 1,
	/obj/item/clipboard = 1,
	/obj/item/paper_bin/bundlenatural = 1,
	/obj/item/gun/ballistic/automatic/pistol/pistol22 = 1,
	/obj/item/ammo_box/magazine/m22 = 2)

/*--------------------------------------------------------------*/

/datum/job/oasis/f13grogmaster
	title = "Grogmaster"
	flag = F13GROGMASTER
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 1
	spawn_positions = 1
	description = "A peddler of alcohol in the pit, while not being in a fighting man's occupation you are nevertheless in an honored position for your alleged skill at serving drinks and keeping down druken brawls. Your main tasks include serving drinks, preparing food, and cleaning up any messes your questionable patrons left."
	supervisors = "the Pitmaster."
	selection_color = "#ff8080"
	exp_requirements = 0
	exp_type = EXP_TYPE_WASTELAND
	forbids = "Cowardice, soberiety, and fruit juice."
	enforces = "Loyalty to the Pitmaster, alcoholism, violence, and challenging a fellow Pit-Rat to a duel to the death for their rank in the pit when dissatisfied with their performance."

	outfit = /datum/outfit/job/oasis/grogmaster

	access = list(ACCESS_DEN)
	minimal_access = list(ACCESS_DEN)

/datum/outfit/job/oasis/grogmaster
	name = "Grogmaster"
	jobtype = /datum/job/oasis/f13grogmaster

	id = /obj/item/card/id/denid
	belt = null
	shoes = /obj/item/clothing/shoes/jackboots
	ears = /obj/item/radio/headset/headset_pitrats
	l_pocket = /obj/item/melee/classic_baton/telescopic
	r_pocket = /obj/item/flashlight/seclite
	uniform = /obj/item/clothing/under/jabroni
	suit = null
	backpack =	/obj/item/storage/backpack/satchel/explorer
	satchel =  /obj/item/storage/backpack/satchel/explorer
	gloves =  null
	head = null
	mask =  null
	backpack_contents = list(
		/obj/item/book/manual/nuka_recipes = 1,
		/obj/item/storage/bag/money/small/wastelander = 1
		)

/*--------------------------------------------------------------*/

/datum/job/oasis/f13pitrat
	title = "Pitrat"
	flag = F13PITRAT
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 3
	spawn_positions = 3
	description = "Addict, criminal, or a plain psychopath, you somehow ended up joining the Pit-Rats. You are the Grunt of the gang, maybe your addicted to that divine ambrosia the Grogmaster cooks up, or maybe your just a sick son-of-a-bitch that wants to hurt people, whatever the case you are loyal to one thing and one thing only, the Pitmaster and the amount of grog he can provide you."
	supervisors = "the Pitmaster."
	selection_color = "#ff8080"
	exp_requirements = 0
	exp_type = EXP_TYPE_WASTELAND
	forbids = "Cowardice, soberiety, and fruit juice."
	enforces = "Loyalty to the Pitmaster, alcoholism, violence, and challenging a fellow Pit-Rat to a duel to the death for their rank in the pit when dissatisfied with their performance."

	outfit = /datum/outfit/job/oasis/f13pitrat

	access = list(ACCESS_DEN)
	minimal_access = list(ACCESS_DEN)

/datum/outfit/job/oasis/f13pitrat
	name = "Pitrat"
	jobtype = /datum/job/oasis/f13pitrat

	id = /obj/item/card/id/denid
	belt = null
	ears = /obj/item/radio/headset/headset_pitrats
	l_pocket = /obj/item/melee/onehanded/knife/switchblade
	r_pocket = /obj/item/flashlight/seclite
	uniform = /obj/item/clothing/under/jabroni
	backpack =	/obj/item/storage/backpack/satchel
	satchel =  /obj/item/storage/backpack/satchel
	gloves =  /obj/item/clothing/gloves/f13/handwraps
	mask =  null
	backpack_contents = list(
		/obj/item/restraints/handcuffs = 1,
		/obj/item/storage/bag/money/small/raider = 1
		)

/datum/outfit/job/oasis/f13pitrat/pre_equip(mob/living/carbon/human/H)
	. = ..()

	shoes = pick(
			/obj/item/clothing/shoes/jackboots,
			/obj/item/clothing/shoes/f13/raidertreads,
			/obj/item/clothing/shoes/f13/rag,
			/obj/item/clothing/shoes/f13/explorer)

	suit = pick(
		/obj/item/clothing/suit/armor/f13/raider/supafly,
		/obj/item/clothing/suit/armor/f13/raider/yankee,
		/obj/item/clothing/suit/armor/f13/raider/blastmaster,
		/obj/item/clothing/suit/armor/f13/raider/sadist,
		/obj/item/clothing/suit/armor/f13/raider/badlands,
		/obj/item/clothing/suit/armor/f13/raider/painspike)

	head = pick(
		/obj/item/clothing/head/f13/pitrat,
		/obj/item/clothing/head/f13/pitrat2,
		/obj/item/clothing/head/f13/pitrat3)

	r_hand = pick(
		/obj/item/storage/box/gunbox/pitrats/pitrat/set1,	//scrap sabre, buckler
		/obj/item/storage/box/gunbox/pitrats/pitrat/set2,	//scrap sabre, autopipe
		/obj/item/storage/box/gunbox/pitrats/pitrat/set3,	//scrap sabre, caravan shotgun
		/obj/item/storage/box/gunbox/pitrats/pitrat/set4,	//sledgehammer
		/obj/item/storage/box/gunbox/pitrats/pitrat/set5,	//fireaxe
		/obj/item/storage/box/gunbox/pitrats/pitrat/set6,	//maceglove
		/obj/item/storage/box/gunbox/pitrats/pitrat/set7)	//lacerator

/*--------------------------------------------------------------*/
/datum/job/oasis/f13settler
	title = "Scab"
	flag = F13SETTLER
	department_flag = DEP_OASIS
	total_positions = -1
	spawn_positions = -1
	supervisors = "no one."
	description = "Welcome to Kebab, you're a deadbeat parasite infesting the slums of this shanty town. You have no inherent rights, the established locals look down upon you, and you've probably earned that."
	selection_color = "#c3d5d5"

	outfit = /datum/outfit/job/den/f13settler

	access = list(ACCESS_BAR)
	minimal_access = list(ACCESS_BAR)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/oasis,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis,
		),
	)


/datum/outfit/job/den/f13settler
	name = "Scab"
	jobtype = /datum/job/oasis/f13settler
	ears = null
	belt = null
	id = null
	backpack = /obj/item/storage/backpack/satchel/explorer
	r_pocket = /obj/item/flashlight/flare
	backpack_contents = list(
		/obj/item/storage/bag/money/small/raider = 1,
		)
/datum/outfit/job/den/f13settler/pre_equip(mob/living/carbon/human/H)
	. = ..()
	uniform = pick(
		/obj/item/clothing/under/f13/merca,
		/obj/item/clothing/under/f13/mercc,
		/obj/item/clothing/under/f13/cowboyb,
		/obj/item/clothing/under/f13/cowboyg,
		/obj/item/clothing/under/f13/raider_leather,
		/obj/item/clothing/under/f13/raiderrags,
		/obj/item/clothing/under/f13/doctor,
		/obj/item/clothing/under/f13/settler,
		/obj/item/clothing/under/pants/f13/ghoul)

	shoes = pick(
		/obj/item/clothing/shoes/f13/rag,
		/obj/item/clothing/shoes/f13/explorer,
		/obj/item/clothing/shoes/f13/raidertreads)

	mask = pick(
		/obj/item/clothing/mask/facewrap,
		/obj/item/clothing/mask/paper,
		/obj/item/clothing/mask/rat,
		/obj/item/clothing/mask/rat/raven,
		/obj/item/clothing/mask/pig,
		/obj/item/clothing/mask/rat/bear,
		/obj/item/clothing/mask/rat/fox,
		/obj/item/clothing/mask/gas/tiki_mask)

	r_hand = pick(
		/obj/item/gun/ballistic/revolver/hobo/knifegun,
		/obj/item/gun/ballistic/revolver/hobo/pepperbox,
		/obj/item/gun/ballistic/revolver/hobo/knucklegun,
		/obj/item/gun/ballistic/automatic/hobo/zipgun,
		/obj/item/kitchen/knife/butcher,
		/obj/item/reagent_containers/pill/patch/jet,
		/obj/item/reagent_containers/pill/patch/turbo,
		/obj/item/reagent_containers/hypospray/medipen/psycho,
		/obj/item/reagent_containers/hypospray/medipen/medx)

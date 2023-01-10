/datum/job/pitrats
	department_flag = PITRATS
	selection_color = "#ff8080"
	faction = FACTION_PITRATS
	exp_type = EXP_TYPE_FALLOUT
	maptype = "yuma"


/datum/job/pitrats/f13pitmaster
	title = "Pitmaster"
	flag = F13PITMASTER
	faction = FACTION_PITRATS
	social_faction = FACTION_PITRATS
	total_positions = 1
	spawn_positions = 1
	description = "A veteran of the Pit-Rats, you have long outlived your rivals to the position by promising those below you with booze and entertainment, many years were spent achieving this role of honour. You are the head honcho of the Pit-Rats, you own the pit and the rats, organize fights and the capturing of slaves, take bets, and ensure your rats are topped up with booze, we wouldn't want one getting too antsy and thinking they can take your position."
	supervisors = "no one."
	req_admin_notify = 1
	selection_color = "#ee6e6e"
	exp_requirements = 0
	exp_type = EXP_TYPE_PITRATS
	forbids = "Cowardice, soberiety, and fruit juice."
	enforces = "Loyalty to the Pitmaster, alcoholism, violence, and challenging a fellow Pit-Rat to a duel to the death for their rank in the pit when dissatisfied with their performance."

	outfit = /datum/outfit/job/pitrats/f13pitmaster

	access = list(ACCESS_DEN)
	minimal_access = list(ACCESS_DEN)

/datum/outfit/job/pitrats/f13pitmaster
	name = "Pitmaster"
	jobtype = /datum/job/pitrats/f13pitmaster

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

/datum/outfit/job/pitrats/f13pitmaster/pre_equip(mob/living/carbon/human/H)
	. = ..()

	r_hand = pick(
		/obj/item/storage/box/gunbox/pitrats/pitmaster/set1,	//powerfist
		/obj/item/storage/box/gunbox/pitrats/pitmaster/set2,	//ripper, 357 magnum
		/obj/item/storage/box/gunbox/pitrats/pitmaster/set3)	//katana

/*--------------------------------------------------------------*/

/datum/job/pitrats/f13champion
	title = "Champion"
	flag = F13CHAMPION
	faction = FACTION_PITRATS
	social_faction = FACTION_PITRATS
	total_positions = 1
	spawn_positions = 1
	description = "A grizzled veteran of the Pit, you are the strongest and one of the moral loyal pitrats, having sworn an oath to the pitmaster. You are to fight in the pit, maintain the pitmaster's authority, and dispose of anyone who displeases him."
	supervisors = "the Pitmaster."
	selection_color = "#ff8080"
	exp_requirements = 0
	exp_type = EXP_TYPE_PITRATS
	forbids = "Cowardice, soberiety, and fruit juice."
	enforces = "Loyalty to the Pitmaster, alcoholism, violence, and challenging a fellow Pit-Rat to a duel to the death for their rank in the pit when dissatisfied with their performance."

	outfit = /datum/outfit/job/pitrats/f13champion

	access = list(ACCESS_DEN)
	minimal_access = list(ACCESS_DEN)

/datum/outfit/job/pitrats/f13champion
	name = "Champion"
	jobtype = /datum/job/pitrats/f13champion

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
/datum/outfit/job/pitrats/f13champion/pre_equip(mob/living/carbon/human/H)
	. = ..()

	r_hand = pick(
		/obj/item/storage/box/gunbox/pitrats/champion/set1,	//cqc
		/obj/item/storage/box/gunbox/pitrats/champion/set2,	//bumper sword
		/obj/item/storage/box/gunbox/pitrats/champion/set3,	//super sledge
		/obj/item/storage/box/gunbox/pitrats/champion/set4,	//chainsaw
		/obj/item/storage/box/gunbox/pitrats/champion/set5)	//protonaxe

/*--------------------------------------------------------------*/


/datum/job/pitrats/f13bookie
	title = "Bookie"
	flag = F13BOOKIE
	faction = FACTION_PITRATS
	social_faction = FACTION_PITRATS
	total_positions = 0
	spawn_positions = 0
	description = "Left unable to fight in the ring by some prior event, the Pit Rats have relegated you to the status of bookie. You are responsible for determining odds on fights, making advertisement posters, taking bets, lending money, selling tickets, and watching the front doors. While your days in the ring are over, your shrewd accounting of the Pit Rat finances are what allows the gang to flourish, and your tight-fisted behavior with loans has allowed the gang to open a profitable loan shark side buisness."
	supervisors = "the Pitmaster."
	selection_color = "#ff8080"
	exp_requirements = 0
	exp_type = EXP_TYPE_PITRATS
	forbids = "Cowardice, soberiety, and fruit juice."
	enforces = "Loyalty to the Pitmaster, alcoholism, violence, and challenging a fellow Pit-Rat to a duel to the death for their rank in the pit when dissatisfied with their performance."

	outfit = /datum/outfit/job/pitrats/f13bookie

	access = list(ACCESS_DEN)
	minimal_access = list(ACCESS_DEN)

/datum/outfit/job/pitrats/f13bookie
	name = "Bookie"
	jobtype = /datum/job/pitrats/f13bookie

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

/datum/job/pitrats/f13grogmaster
	title = "Grogmaster"
	flag = F13GROGMASTER
	faction = FACTION_PITRATS
	social_faction = FACTION_PITRATS
	total_positions = 1
	spawn_positions = 1
	description = "A peddler of alcohol in the pit, while not being in a fighting man's occupation you are nevertheless in an honored position for your alleged skill at serving drinks and keeping down druken brawls. Your main tasks include serving drinks, preparing food, and cleaning up any messes your questionable patrons left."
	supervisors = "the Pitmaster."
	selection_color = "#ff8080"
	exp_requirements = 0
	exp_type = EXP_TYPE_PITRATS
	forbids = "Cowardice, soberiety, and fruit juice."
	enforces = "Loyalty to the Pitmaster, alcoholism, violence, and challenging a fellow Pit-Rat to a duel to the death for their rank in the pit when dissatisfied with their performance."

	outfit = /datum/outfit/job/pitrats/grogmaster

	access = list(ACCESS_DEN)
	minimal_access = list(ACCESS_DEN)

/datum/outfit/job/pitrats/grogmaster
	name = "Grogmaster"
	jobtype = /datum/job/pitrats/f13grogmaster

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

/datum/job/pitrats/f13pitrat
	title = "Pitrat"
	flag = F13PITRAT
	faction = FACTION_PITRATS
	social_faction = FACTION_PITRATS
	total_positions = 3
	spawn_positions = 3
	description = "Addict, criminal, or a plain psychopath, you somehow ended up joining the Pit-Rats. You are the Grunt of the gang, maybe your addicted to that divine ambrosia the Grogmaster cooks up, or maybe your just a sick son-of-a-bitch that wants to hurt people, whatever the case you are loyal to one thing and one thing only, the Pitmaster and the amount of grog he can provide you."
	supervisors = "the Pitmaster."
	selection_color = "#ff8080"
	exp_requirements = 0
	exp_type = EXP_TYPE_PITRATS
	forbids = "Cowardice, soberiety, and fruit juice."
	enforces = "Loyalty to the Pitmaster, alcoholism, violence, and challenging a fellow Pit-Rat to a duel to the death for their rank in the pit when dissatisfied with their performance."

	outfit = /datum/outfit/job/pitrats/f13pitrat

	access = list(ACCESS_DEN)
	minimal_access = list(ACCESS_DEN)

/datum/outfit/job/pitrats/f13pitrat
	name = "Pitrat"
	jobtype = /datum/job/pitrats/f13pitrat

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

/datum/outfit/job/pitrats/f13pitrat/pre_equip(mob/living/carbon/human/H)
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

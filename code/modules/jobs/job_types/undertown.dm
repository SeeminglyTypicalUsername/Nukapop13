/*

/datum/job/undertown
	exp_type = EXP_TYPE_UNDERTOWN
	faction = FACTION_UNDERTOWN
	department_flag = UNDERTOWN
	maptype = "undertown"
	mapexclude = list("tribal", "reno", "sunnyvale", "yuma")
	selection_color = "#9500C7"


/datum/job/undertown/f13merchant
	title = "Undertown Merchant"
	flag = F13MERCHANT
	head_announce = list("Security")
	total_positions = 1
	spawn_positions = 1
	supervisors = "free hand of the market"
	description = "You are the owner and founder of Undertown. Everybody here works for you, in one way or another. You pay their wages, and you reap the rewards of their toil. You are responsible for all major decision making in the town, including foreign and domestic policy."
	selection_color = "#dcba97"
	exp_requirements = 0

	outfit = /datum/outfit/job/den/f13shopkeeper
	access = list(ACCESS_BAR, ACCESS_CARGO_BOT, ACCESS_MINING, ACCESS_GATEWAY)
	minimal_access = list(ACCESS_BAR, ACCESS_CARGO_BOT, ACCESS_MINING, ACCESS_GATEWAY)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/undertown,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/undertown,
		),
	)

/datum/outfit/job/undertown/f13merchant
	name = "Shopkeeper"
	jobtype = /datum/job/undertown/f13merchant

	id = /obj/item/card/id/dogtag/town
	shoes = /obj/item/clothing/shoes/f13/brownie
	uniform = /obj/item/clothing/under/f13/brahminbaron/foreign_suit
	head = /obj/item/clothing/head/helmet/f13/foreign_hat
	suit = /obj/item/clothing/suit/armor/f13/civilians/schlimmcoat
	ears = /obj/item/radio/headset/headset_town
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

/datum/job/undertown/f13inspector
	title = "Undertown Inspector"
	flag = F13INSPECTOR
	head_announce = list("Security")
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Merchant"
	description = "You are the Merchant's secretary and chief of the enforcers, his internal police. Your job is simple: keep the workers in line, and match the harsh quotas set by the Merchant."
	selection_color = "#dcba97"
	exp_requirements = 0
	outfit = /datum/outfit/job/undertown/f13inspector

	access = list(ACCESS_BAR, ACCESS_CARGO_BOT, ACCESS_GATEWAY, ACCESS_MINING)
	minimal_access = list(ACCESS_BAR, ACCESS_CARGO_BOT, ACCESS_GATEWAY, ACCESS_MINING)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/undertown,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/undertown,
		),
	)
/datum/outfit/job/undertown/f13inspector
	name = "Undertown Inspector"
	jobtype = /datum/job/undertown/f13inspector
	head = /obj/item/clothing/head/f13/army/officer/undertown
	uniform = /obj/item/clothing/under/lawyer/blacksuit
	suit = /obj/item/clothing/suit/armor/f13/mordinos/grey_trench_coat
	belt = null
	gloves = null
	id = /obj/item/card/id/undertown/papers
	ears = /obj/item/radio/headset/headset_town
	shoes = /obj/item/clothing/shoes/laceup
	r_pocket = /obj/item/flashlight/flare
	backpack = /obj/item/storage/backpack/satchel/leather
	satchel = /obj/item/storage/backpack/satchel/leather
	suit_store = /obj/item/gun/ballistic/shotgun/hunting
	backpack_contents = list(
		/obj/item/storage/bag/money/small = 1,
		/obj/item/ammo_box/shotgun/buck = 1,)

/*--------------------------------------------------------------*/

/datum/job/undertown/f13undertowncaptain
	title = "Undertown Captain"
	flag = F13UNDERTOWNCAPTAIN
	head_announce = list("Security")
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Merchant"
	description = "You are the Merchant's strong right arm, and in command of the watchmen. You are responsible for ensuring the town and the Merchant's property remains in good condition."
	selection_color = "#d7b088"
	exp_requirements = 0

	outfit = /datum/outfit/job/undertown/f13undertowncaptain

	access = list(ACCESS_BAR, ACCESS_COMMAND, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_KITCHEN, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS)
	minimal_access = list(ACCESS_BAR, ACCESS_COMMAND, ACCESS_CLONING, ACCESS_GATEWAY, ACCESS_CARGO_BOT, ACCESS_MINT_VAULT, ACCESS_CLINIC, ACCESS_KITCHEN, ACCESS_MINING, ACCESS_FORENSICS_LOCKERS)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/undertown,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/undertown,
		),
	)

/datum/outfit/job/undertown/f13undertowncaptain
	name = "Undertown Captain"
	jobtype = /datum/job/undertown/f13undertowncaptain

	id = /obj/item/card/id/undertown/papers
	belt = null
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	mask = /obj/item/clothing/mask/balaclava
	ears = /obj/item/radio/headset/headset_town
	uniform = /obj/item/clothing/under/f13/army/officer
	suit = /obj/item/clothing/suit/armor/bulletproof
	head = /obj/item/clothing/head/f13/army/officer/undertown
	neck = /obj/item/storage/belt/holster/legholster
	belt = /obj/item/storage/belt/military/army
	shoes = /obj/item/clothing/shoes/f13/enclave/serviceboots/undertown
	gloves = /obj/item/clothing/gloves/f13/military
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
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	ADD_TRAIT(H, TRAIT_SELF_AWARE, src)

/*--------------------------------------------------------------*/

/datum/job/undertown/f13watchman
	title = "Undertown Watchman"
	flag = F13WATCHMAN
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Captain"
	description = "You are a hired gun, here to protect the town of Undertown from outside attack and enforce your employers will on the natives. Your Commander is the Captain, but your primary employer is the Merchant, and your loyalty is to him first."
	selection_color = "#dcba97"
	exp_type = EXP_TYPE_FALLOUT
	exp_requirements = 0

	outfit = /datum/outfit/job/undertown/f13watchman
	access = list(ACCESS_BAR, ACCESS_CARGO_BOT, ACCESS_MINING, ACCESS_GATEWAY)
	minimal_access = list(ACCESS_BAR, ACCESS_CARGO_BOT, ACCESS_MINING, ACCESS_GATEWAY)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/undertown,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/undertown,
		),
	)

/datum/outfit/job/undertown/f13watchman
	name = "Watchman"
	jobtype = /datum/job/undertown/f13watchman
	head = /obj/item/clothing/head/helmet/blueshirt/undertown
	mask = /obj/item/clothing/mask/balaclava
	ears = /obj/item/radio/headset/headset_town
	id = /obj/item/card/id/undertown/papers
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	gloves = /obj/item/clothing/gloves/f13/military
	belt = /obj/item/storage/belt/military/assault
	suit = /obj/item/clothing/suit/armor/bulletproof
	neck = null
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/flare
	shoes = /obj/item/clothing/shoes/f13/enclave/serviceboots/undertown
	uniform = /obj/item/clothing/under/f13/army
	suit_store = /obj/item/gun/ballistic/automatic/assault_carbine/policerifle
	backpack_contents = list(
		/obj/item/restraints/handcuffs = 1,
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

/datum/job/undertown/f13enforcer
	title = "Undertown Enforcer"
	flag = F13ENFORCER
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Inspector"
	description = "You are muscle, hired for cruelty and not asking many questions. Your role is particularly unsavory: you are the truncheon that keeps the workers in line and orderly. You are directly commanded by the Inspector, and should fear if the workers you are responsible for fail to meet quota: it will be on your head."
	selection_color = "#dcba97"
	exp_type = EXP_TYPE_FALLOUT
	exp_requirements = 0

	outfit = /datum/outfit/job/undertown/f13enforcer
	access = list(ACCESS_BAR, ACCESS_CARGO_BOT, ACCESS_MINING, ACCESS_GATEWAY)
	minimal_access = list(ACCESS_BAR, ACCESS_CARGO_BOT, ACCESS_MINING, ACCESS_GATEWAY)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/undertown,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/undertown,
		),
	)

/datum/outfit/job/undertown/f13enforcer
	name = "Enforcer"
	jobtype = /datum/job/undertown/f13enforcer
	head = /obj/item/clothing/head/helmet/blueshirt/undertown
	mask = /obj/item/clothing/mask/balaclava
	ears = /obj/item/radio/headset/headset_town
	id = /obj/item/card/id/undertown/papers
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	gloves = /obj/item/clothing/gloves/f13/military
	belt = /obj/item/storage/belt/military/assault
	suit = /obj/item/clothing/suit/armor/f13/mordinos/grey_trench_coat
	neck = /obj/item/storage/belt/holster/legholster/police
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/flare
	shoes = /obj/item/clothing/shoes/f13/enclave/serviceboots/undertown
	uniform = /obj/item/clothing/under/f13/army
	suit_store = /obj/item/melee/classic_baton
	backpack_contents = list(
		/obj/item/restraints/handcuffs = 2,
		/obj/item/grenade/flashbang = 1,
		)

/datum/outfit/job/den/f13deputy/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)

/*--------------------------------------------------------------*/

/datum/job/undertown/f13foreman
	title = "Undertown Foreman"
	flag = F13FOREMAN
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Inspector"
	description = "You are the only 'skilled' labor among the workers, and are effectively their leader. Better paid (or paid at all), and considered more valuable, you are responsible for organizing the workers towards productive means."
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/undertown/f13foreman

	access = list(ACCESS_BAR, ACCESS_MINING)
	minimal_access = list(ACCESS_BAR, ACCESS_MINING)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/undertown,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/undertown,
		),
	)

/datum/outfit/job/undertown/f13foreman
	name = "Foreman"
	jobtype = /datum/job/undertown/f13foreman

	head = /obj/item/clothing/head/hardhat
	mask = null
	ears = /obj/item/radio/headset/headset_town
	id = /obj/item/card/id/undertown/papers
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	gloves = null
	belt = /obj/item/storage/belt/utility/full
	suit = null
	neck = /obj/item/storage/belt/holster/legholster/police
	r_hand = /obj/item/pickaxe/mini
	l_pocket = /obj/item/storage/bag/money/small/settler
	r_pocket = /obj/item/flashlight/flare
	shoes = /obj/item/clothing/shoes/workboots/mining
	uniform = /obj/item/clothing/under/overalls
	backpack_contents = list(
		/obj/item/clipboard = 1,
		/obj/item/pen = 1,
		/obj/item/paper = 1,
		)

/*--------------------------------------------------------------*/

/datum/job/undertown/f13worker
	title = "Undertown Worker"
	flag = F13WORKER
	total_positions = -1
	spawn_positions = -1
	supervisors = "the foremen and the Inspector"
	description = "You are the lowest of the low, grunt labor in the Merchant's employ. Some of you are simply working for a paycheck, others are indentured servants or slaves forced into labor by the Merchant's hired muscle. Your job is to mine, and hope for a better life."
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/undertown/f13worker

	loadout_options = list(
		/datum/outfit/loadout/miner,
		/datum/outfit/loadout/tribalservant,
		/datum/outfit/loadout/scrapper)

	access = list(ACCESS_BAR, ACCESS_MINING)
	minimal_access = list(ACCESS_BAR, ACCESS_MINING)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/undertown,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/undertown,
		),
	)

/datum/outfit/job/undertown/f13worker
	name = "Worker"
	jobtype = /datum/job/undertown/f13worker

	id = /obj/item/card/id/undertown/papers
	ears = null
	shoes = null
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer

/datum/outfit/job/den/f13indenturedservant/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/f13/rag,
		/obj/item/clothing/under/f13/raiderrags,
		/obj/item/clothing/under/f13/raider_leather)

/datum/outfit/loadout/tribalservant
	name = "Tribal Slave"
	uniform = /obj/item/clothing/under/f13/exile/tribal
	backpack_contents = list(
		/obj/item/soap = 1,
		/obj/item/warpaint_bowl = 1,
		/obj/item/pickaxe = 1,)

/datum/outfit/loadout/miner
	name = "Miner"
	belt = /obj/item/storage/bag/ore
	shoes = /obj/item/clothing/shoes/workboots/mining
	backpack_contents = list(
		/obj/item/mining_scanner = 1,
		/obj/item/pickaxe = 1,)


/*--------------------------------------------------------------*/
////////////////////////////////////////////////////////////
//THE CHURCH//https://www.youtube.com/watch?v=BYP6wlg3MdA///
////////////////////////////////////////////////////////////

/datum/job/undertown/f13highpriest
	title = "Undertown High Priest"
	flag = F13HIGHPRIEST
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Holy Father"
	description = "You are the leader of the Church, at least for now. Your sworn duty is to expand and protect the faith, through any means necessary, in preparation for the day of retribution that is to come. You are the spiritual leader of the faith, and are expected to give sermons, advise members, and perform all major rituals. You are beholden to no one but the Father above, and the Servitors answer directly to you."
	selection_color = "#9500C7"
	forbids = "Exposing the secrets of the Church, fraternizing with the NCR, treating patients for nothing in return, consuming alcohol, and using chems."
	enforces = "Preaching the faith, following the faith's internal structure and rules."
	exp_requirements = 0

	outfit = /datum/outfit/job/cotc/f13highpriest
	access = list(ACCESS_COTC, ACCESS_COTC_ARMORY, ACCESS_COTC_SECRET)
	minimal_access = list(ACCESS_COTC, ACCESS_COTC_ARMORY, ACCESS_COTC_SECRET)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/undertown,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/undertown,
		),
	)

/datum/outfit/job/cotc/f13highpriest
	name = "High Priest"
	jobtype = /datum/job/undertown/f13highpriest

	id = /obj/item/card/id/dogtag/town
	uniform = /obj/item/clothing/under/f13/religion/priest
	suit = /obj/item/clothing/suit/hooded/robes/cotc/highpriest
	suit_store = /obj/item/gun/energy/laser/plasma/pistol
	ears = /obj/item/radio/headset/headset_town
	backpack = /obj/item/storage/backpack/satchel/leather
	satchel = /obj/item/storage/backpack/satchel/leather
	duffelbag = /obj/item/storage/backpack/duffelbag
	gloves = null
	l_pocket = /obj/item/storage/bag/money/small/den
	r_pocket = /obj/item/flashlight/glowstick
	shoes = /obj/item/clothing/shoes/laceup
	backpack_contents = list(
		/obj/item/book/manual/thebook = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2,
		/obj/item/storage/fancy/candle_box = 1,
		/obj/item/stock_parts/cell/ammo/ec = 2,
		/obj/item/storage/bag/money/small/settler
		)
/datum/outfit/job/cotc/f13kebabhighpriest/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.grant_language(/datum/language/shorthand)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_MEDICALEXPERT, src)
	ADD_TRAIT(H, TRAIT_SURGERY_MID, src)


/*--------------------------------------------------------------*/

/datum/job/undertown/f13servitormedici
	title = "Undertown Servitor Medici"
	flag = F13SERVITORMEDICI
	total_positions = 1
	spawn_positions = 1
	supervisors = "the High Priest and the Holy Father"
	description = "You are an inducted member of the Church�s inner circle, sworn to direct the medical arm of the faith. You are expected to be knowledgeable about all medical matters, and to put the interests of your faith above those of your patients. Your role is to direct the Acolytes and ensure they provide excellent care while staying true to Church dogma."
	selection_color = "#9500C7"
	forbids = "Exposing the secrets of the Church, fraternizing with the NCR, treating patients for nothing in return, consuming alcohol, and using chems."
	enforces = "Preaching the faith, following the faith's internal structure and rules."
	exp_requirements = 0

	outfit = /datum/outfit/job/cotc/f13servitormedici
	access = list(ACCESS_COTC, ACCESS_COTC_ARMORY, ACCESS_COTC_SECRET)
	minimal_access = list(ACCESS_COTC, ACCESS_COTC_ARMORY, ACCESS_COTC_SECRET)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/undertown,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/undertown,
		),
	)

/datum/outfit/job/cotc/f13servitormedici
	name = "Undertown Servitor Medici"
	jobtype = /datum/job/undertown/f13servitormedici

	id = /obj/item/card/id/dogtag/town
	uniform = /obj/item/clothing/under/f13/religion/priest
	suit = /obj/item/clothing/suit/hooded/robes/cotc/servitor
	suit_store = /obj/item/gun/energy/laser/wattz
	ears = /obj/item/radio/headset/headset_town
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
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 4
		)

/datum/outfit/job/cotc/f13servitormedici/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.grant_language(/datum/language/shorthand)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_MEDICALEXPERT, src)
	ADD_TRAIT(H, TRAIT_SURGERY_HIGH, src)

/*--------------------------------------------------------------*/

/datum/job/undertown/f13servitormilitant
	title = "Undertown Servitor Militant"
	flag = F13SERVITORMILITANT
	total_positions = 1
	spawn_positions = 1
	supervisors = "the High Priest and the Holy Father"
	description = "You are an inducted member of the Church�s inner circle, sworn to lead the faith�s military forces into battle. You know much of the secrets that dwell within the Faith�s inner sanctum, and you know what is at stake if they are discovered. You directly command the Church�s Proselytizers, and answer directly to the High Priest."
	selection_color = "#9500C7"
	forbids = "Exposing the secrets of the Church, fraternizing with the NCR, treating patients for nothing in return, consuming alcohol, and using chems."
	enforces = "Preaching the faith, following the faith's internal structure and rules."
	exp_requirements = 0

	outfit = /datum/outfit/job/cotc/f13servitormilitant
	access = list(ACCESS_COTC, ACCESS_COTC_ARMORY, ACCESS_COTC_SECRET)
	minimal_access = list(ACCESS_COTC, ACCESS_COTC_ARMORY, ACCESS_COTC_SECRET)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/undertown,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/undertown,
		),
	)

/datum/outfit/job/cotc/f13servitormilitant
	name = "Undertown Servitor Militant"
	jobtype = /datum/job/undertown/f13servitormilitant

	id = /obj/item/card/id/dogtag/town
	uniform = /obj/item/clothing/under/f13/religion/priest
	suit = /obj/item/clothing/suit/hooded/robes/cotc/servitor
	suit_store = /obj/item/gun/energy/laser/wattz2k
	ears = /obj/item/radio/headset/headset_town
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
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2
		)

/datum/outfit/job/cotc/f13servitormilitant/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.grant_language(/datum/language/shorthand)

/*--------------------------------------------------------------*/

/datum/job/undertown/f13proselytizer
	title = "Undertown Proselytizer"
	flag = F13PROSELYTIZER
	total_positions = 2
	spawn_positions = 2
	supervisors = "the High Priest and the Holy Father"
	description = "You are the strong right arm of the Church. You answer directly to the Servitor Militant. Your role is to guard the Church, put pressure upon outsiders, drum up business with your bludgeon, and collect debts."
	selection_color = "#CB2EFF"
	forbids = "Exposing the secrets of the Church, fraternizing with the NCR, treating patients for nothing in return, consuming alcohol, and using chems."
	enforces = "Preaching the faith, following the faith's internal structure and rules."
	exp_requirements = 0

	outfit = /datum/outfit/job/cotc/f13proselytizer
	access = list(ACCESS_COTC, ACCESS_COTC_ARMORY)
	minimal_access = list(ACCESS_COTC, ACCESS_COTC_ARMORY)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/undertown,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/undertown,
		),
	)

/datum/outfit/job/cotc/f13proselytizer
	name = "Proselytizer"
	jobtype = /datum/job/undertown/f13proselytizer

	id = /obj/item/card/id/dogtag/town
	uniform = /obj/item/clothing/under/f13/brahminm
	suit = /obj/item/clothing/suit/hooded/robes/cotc/proselytizer
	suit_store = /obj/item/gun/energy/laser/wattz
	ears = /obj/item/radio/headset/headset_town
	backpack = /obj/item/storage/backpack/satchel/trekker
	satchel = /obj/item/storage/backpack/satchel/trekker
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

/datum/job/undertown/f13acolyte
	title = "Undertown Acolyte"
	flag = F13ACOLYTE
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Servitor Medici and the Holy Father"
	description = "You are a trained healer and a sworn member of the Church. You follow all orders given to you by the Servitor Medici and the High Priest. The faith does not give medical services freely, those who are unable to pay will be held in the Church until their medical fees are paid, or they agree to join the faith."
	selection_color = "#CB2EFF"
	forbids = "Exposing the secrets of the Church, fraternizing with the NCR, treating patients for nothing in return, consuming alcohol, and using chems."
	enforces = "Preaching the faith, following the faith's internal structure and rules."
	exp_requirements = 0

	outfit = /datum/outfit/job/cotc/f13acolyte
	access = list(ACCESS_COTC)
	minimal_access = list(ACCESS_COTC)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/undertown,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/undertown,
		),
	)

/datum/outfit/job/cotc/f13acolyte
	name = "Acolyte"
	jobtype = /datum/job/undertown/f13acolyte

	id = /obj/item/card/id/dogtag/town
	uniform = /obj/item/clothing/under/f13/brahminm
	suit = /obj/item/clothing/suit/hooded/robes/cotc/acolyte
	suit_store = null
	ears = /obj/item/radio/headset/headset_town
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
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 4
		)

/datum/outfit/job/cotc/f13acolyte/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_MEDICALEXPERT, src)
	ADD_TRAIT(H, TRAIT_SURGERY_MID, src)

/*--------------------------------------------------------------*/

/datum/job/undertown/f13neophyte
	title = "Undertown Neophyte"
	flag = F13NEOPHYTE
	total_positions = 4
	spawn_positions = 4
	supervisors = "the church"
	description = "By some means or another you have become indebted to the Church. There was none to pay your debt, so all that was left was to give your body and mind to the Church. Attend to menial duties such as cleaning, farming, and cooking."
	selection_color = "#CB2EFF"
	forbids = "Exposing the secrets of the Church, fraternizing with the NCR, treating patients for nothing in return, consuming alcohol, and using chems."
	enforces = "Preaching the faith, following the faith's internal structure and rules."

	outfit = /datum/outfit/job/cotc/neophyte

	access = list(ACCESS_COTC)
	minimal_access = list(ACCESS_COTC)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/undertown,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/undertown,
		),
	)

/datum/outfit/job/cotc/neophyte
	name = "Neophyte"
	jobtype = /datum/job/undertown/f13neophyte

	id = /obj/item/card/id/dogtag/town
	ears = 	/obj/item/radio/headset/headset_town
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
/datum/job/undertown/f13undertownraider
	title = "Undertown Raider"
	flag = F13UNDERTOWNRAIDER
	total_positions = -1
	spawn_positions = -1
	description = "You are a member of one of the infamous raider gangs of the wastes. Pillaging, robbing, murdering wasters are a recurrent chore for your people. Depending on their affiliation, though, raiders may vary from an illiterate chemhead, to a straight edge tribal, or even a member of a group with strong connections and an unique culture based on raiding, and all of this should be considered when defining your character. Form loose associations with other raiders to get an edge. Betray said raiders because of a dumb argument."
	supervisors = "the man with the biggest stick"
	selection_color = "#F7EFCF"
	exp_requirements = 0

	outfit = /datum/outfit/job/undertown/f13undertownraider

	loadout_options = list(
	/datum/outfit/loadout/raider_fugitive,
	/datum/outfit/loadout/raider_bandido,
	/datum/outfit/loadout/raider_ncradeserter,
	/datum/outfit/loadout/raider_denslaver,
	/datum/outfit/loadout/raider_vipers,
	/datum/outfit/loadout/raider_jackals,
	/datum/outfit/loadout/raider_80s,
	/datum/outfit/loadout/raider_manhunter,
	/datum/outfit/loadout/raider_psychotic,
	/datum/outfit/loadout/raider_eyebot
	)

/datum/outfit/job/undertown/f13undertownraider
	name = "Reno Raider"
	jobtype = /datum/job/citizens/f13renoraider
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	ears = null
	l_pocket = /obj/item/storage/bag/money/small/reno/cap/onezero //placeholder
	id = null
	shoes = /obj/item/clothing/shoes/jackboots
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2,
		/obj/item/melee/onehanded/knife/trench = 1,
		/obj/item/restraints/handcuffs = 2,
		)
/datum/outfit/job/citizens/f13renoraider/pre_equip(mob/living/carbon/human/H)
	. = ..()
	uniform = pick(
		/obj/item/clothing/under/f13/merca,
		/obj/item/clothing/under/syndicate/camo,
		/obj/item/clothing/under/f13/mercc,
		/obj/item/clothing/under/f13/raider_leather,
		/obj/item/clothing/under/f13/raiderrags,
		/obj/item/clothing/under/pants/f13/ghoul,
		/obj/item/clothing/under/jabroni)

/datum/outfit/loadout/raider_fugitive
	name = "Fugitive"
	suit = /obj/item/clothing/suit/armor/f13/ncrcfjacket
	uniform = /obj/item/clothing/under/f13/ncrcf
	mask = /obj/item/clothing/mask/russian_balaclava
	backpack_contents = list(
		/obj/item/gun/ballistic/revolver/caravan_shotgun = 1,
		/obj/item/ammo_box/shotgun/improvised = 2,
		/obj/item/melee/classic_baton = 1)

/datum/outfit/loadout/raider_bandido
	name = "Bandido"
	belt = /obj/item/gun/ballistic/revolver/colt357
	neck = /obj/item/storage/belt/holster
	mask = /obj/item/clothing/mask/ncr_facewrap
	uniform = /obj/item/clothing/under/f13/jamrock
	head = /obj/item/clothing/head/helmet/f13/vaquerohat
	glasses = /obj/item/clothing/glasses/f13/biker
	shoes = /obj/item/clothing/shoes/workboots/mining
	backpack_contents = list(
		/obj/item/ammo_box/a357 = 2,
		/obj/item/kitchen/knife = 1)

/datum/outfit/loadout/raider_ncradeserter
	name = "NCRA Deserter"
	suit = /obj/item/clothing/suit/armor/f13/ncrarmor
	suit_store = /obj/item/gun/ballistic/rifle/hunting
	belt = /obj/item/storage/belt/military/assault/ncr
	mask = /obj/item/clothing/mask/ncr_facewrap
	uniform = /obj/item/clothing/under/f13/ncr
	head = /obj/item/clothing/head/f13/ncr/goggles
	shoes = /obj/item/clothing/shoes/f13/military/ncr
	backpack_contents = list(
		/obj/item/melee/onehanded/knife/bayonet = 1,
		/obj/item/ammo_box/a308 = 2)

/datum/outfit/loadout/raider_denslaver
	name = "Den Slaver"
	suit = /obj/item/clothing/suit/armored/light/leather_jacketmk2
	suit_store = /obj/item/gun/ballistic/automatic/autopipe
	mask = /obj/item/clothing/mask/bandana/durathread
	uniform = /obj/item/clothing/under/f13/navy
	head = /obj/item/clothing/head/helmet/riot
	glasses = /obj/item/clothing/glasses/f13/biker
	shoes = /obj/item/clothing/shoes/jackboots
	backpack_contents = list(
		/obj/item/melee/classic_baton = 1,
		/obj/item/restraints/legcuffs/bola/tactical = 3,
		/obj/item/ammo_box/magazine/autopipe = 1)

/datum/outfit/loadout/raider_vipers
	name = "Viper"
	suit = /obj/item/clothing/suit/armored/light/duster/vet
	suit_store = /obj/item/gun/ballistic/automatic/pistol/n99
	uniform = /obj/item/clothing/under/jabroni
	glasses = /obj/item/clothing/glasses/f13/biker
	shoes = /obj/item/clothing/shoes/jackboots
	backpack_contents = list(
		/obj/item/toy/plush/snakeplushie = 1,
		/obj/item/viper_venom = 2,
		/obj/item/ammo_box/magazine/m10mm_adv = 2)

/datum/outfit/loadout/raider_jackals
	name = "Jackal"
	uniform = /obj/item/clothing/under/f13/raider_leather
	shoes = /obj/item/clothing/shoes/f13/raidertreads
	backpack_contents = list(
		/obj/item/twohanded/fireaxe/bmprsword = 1,
		/obj/item/reagent_containers/hypospray/medipen/medx = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/plain/human = 2,
		/obj/item/kitchen/knife/butcher = 1)

/datum/outfit/loadout/raider_80s
	name = "80s"
	suit = /obj/item/clothing/suit/armor/f13/raiders/roadwarriors
	belt = /obj/item/storage/backpack/spearquiver
	uniform = /obj/item/clothing/under/pants/f13/warboy
	head = /obj/item/clothing/head/helmet/f13/raider/arclight
	glasses = /obj/item/clothing/glasses/f13/biker
	shoes = /obj/item/clothing/shoes/jackboots
	backpack_contents = list(
		/obj/item/melee/onehanded/machete/scrapsabre = 1)

/datum/outfit/loadout/raider_manhunter
	name = "Manhunter"
	suit = /obj/item/clothing/suit/armored/light/tribalraider
	belt = /obj/item/storage/backpack/spearquiver
	uniform = /obj/item/clothing/under/f13/exile/tribal
	head = /obj/item/clothing/head/helmet/f13/deathskull
	backpack_contents = list(
		/obj/item/restraints/legcuffs/beartrap = 5,
		/obj/item/nullrod/tribal_knife = 1)

/datum/outfit/loadout/raider_psychotic
	name = "Painspike"
	suit = /obj/item/clothing/suit/armor/f13/raider/painspike
	suit_store = /obj/item/gun/ballistic/revolver/caravan_shotgun
	head = /obj/item/clothing/head/helmet/f13/raider/psychotic
	backpack_contents = list(
		/obj/item/ammo_box/shotgun/improvised = 1,
		/obj/item/melee/onehanded/club/fryingpan = 1)

/datum/outfit/loadout/raider_eyebot
	name = "Eyebot"
	suit = /obj/item/clothing/suit/armor/f13/raider/badlands
	head = /obj/item/clothing/head/helmet/f13/raider/eyebot
	backpack_contents = list(
		/obj/item/pizzabox/bomb = 1,
		/obj/item/restraints/legcuffs/beartrap = 3)

/*--------------------------------------------------------------*/

/datum/job/undertown/f13waster
	title = "Waster"
	flag = F13WASTER
	total_positions = -1
	spawn_positions = -1
	description = "You arrive at Undertown hoping to escape your past, the war, or perhaps something worse. But you�ve seen the torchlight and heard the bark of the military officers. You haven�t escaped anything. Try to survive, establish your own settlement, make your own legend. Suffer well and die gladly."
	supervisors = "yourself"
	selection_color = "#dddddd"

	outfit = /datum/outfit/job/undertown/f13waster

	access = list()		//we can expand on this and make alterations as people suggest different loadouts
	minimal_access = list()
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/undertown/f13waster,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/undertown/f13waster,
			/datum/job/kebab/f13detective,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/undertown/f13waster,
		),
		/datum/matchmaking_pref/disciple = list(
			/datum/job/undertown/f13waster,
			/datum/job/undertown/f13highpriest,
		),
		/datum/matchmaking_pref/patron = list(
			/datum/job/undertown/f13waster,
		),
		/datum/matchmaking_pref/protegee = list(
			/datum/job/undertown/f13waster,
		),
	)
	loadout_options = list(
	/datum/outfit/loadout/vault_refugee,
	/datum/outfit/loadout/salvager,
	/datum/outfit/loadout/medic,
	/datum/outfit/loadout/merchant,
	/datum/outfit/loadout/scavenger,
	/datum/outfit/loadout/settler,
	/datum/outfit/loadout/warrior,
	/datum/outfit/loadout/ncrcitizen,
	/datum/outfit/loadout/legioncivilian,
	/datum/outfit/loadout/wastelander_desert_ranger
	)

/datum/outfit/job/undertown/f13waster
	name = "Wastelander"
	jobtype = /datum/job/undertown/f13waster

	id = null
	ears = null
	belt = null
	r_hand = /obj/item/book/granter/trait/selection
	l_pocket = /obj/item/storage/bag/money/small/wastelander
	r_pocket = /obj/item/flashlight/flare
	belt = /obj/item/melee/onehanded/knife/survival
	backpack = /obj/item/storage/backpack/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak,
		/obj/item/reagent_containers/hypospray/medipen/stimpak,
		/obj/item/reagent_containers/pill/radx,
		)

/datum/outfit/job/undertown/f13waster/pre_equip(mob/living/carbon/human/H)
	..()
	suit = pick(
		/obj/item/clothing/suit/armor/f13/kit,
		/obj/item/clothing/suit/f13/veteran,
		/obj/item/clothing/suit/toggle/labcoat/f13/wanderer,)

/datum/outfit/loadout/salvager
	name = "Salvager"
	uniform = /obj/item/clothing/under/f13/machinist
	shoes = /obj/item/clothing/shoes/f13/explorer
	gloves = /obj/item/clothing/gloves/f13/blacksmith
	head = /obj/item/clothing/head/welding
	r_hand = /obj/item/weldingtool/largetank
	backpack_contents = list(/obj/item/gun/ballistic/automatic/pistol/m1911 = 1
							)

/datum/outfit/loadout/scavenger
	name = "Scavenger"
	uniform = /obj/item/clothing/under/f13/lumberjack
	shoes = /obj/item/clothing/shoes/f13/explorer
	r_hand = /obj/item/storage/backpack/duffelbag/scavengers
	l_hand = /obj/item/pickaxe/drill
	belt = /obj/item/storage/belt
	backpack_contents = list(/obj/item/mining_scanner = 1,
							/obj/item/metaldetector = 1,
							/obj/item/shovel = 1,
							/obj/item/gun/ballistic/automatic/pistol/m1911 = 1
							)

/datum/outfit/loadout/settler
	name = "Settler"
	uniform = /obj/item/clothing/under/f13/settler
	shoes = /obj/item/clothing/shoes/f13/explorer
	r_hand = /obj/item/hatchet
	l_hand = /obj/item/gun/ballistic/automatic/pistol/n99
	belt = /obj/item/storage/belt
	backpack_contents = list(
		/obj/item/stack/sheet/metal = 50,
		/obj/item/stack/sheet/mineral/wood = 50,
		/obj/item/pickaxe/mini = 1,
		/obj/item/toy/crayon/spraycan = 1,
		/obj/item/cultivator = 1,
		/obj/item/reagent_containers/glass/bucket = 1,
		/obj/item/storage/bag/plants/portaseeder = 1
		)

/datum/outfit/loadout/medic
	name = "Wasteland Doctor"
	uniform = /obj/item/clothing/under/f13/follower
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/followers
	shoes = /obj/item/clothing/shoes/f13/explorer
	gloves = /obj/item/clothing/gloves/color/latex
	neck = /obj/item/clothing/neck/stethoscope
	belt = /obj/item/storage/belt/medical
	backpack_contents =  list(/obj/item/reagent_containers/medspray/synthflesh = 2,
							/obj/item/smelling_salts = 1,
							/obj/item/healthanalyzer = 1,
							/obj/item/gun/ballistic/automatic/pistol/m1911 = 1,
							/obj/item/reagent_containers/glass/bottle/epinephrine = 2,
							/obj/item/storage/backpack/duffelbag/med/surgery = 1,
							/obj/item/paper_bin = 1,
							/obj/item/folder = 1,
							/obj/item/pen/fountain = 1,
							/obj/item/storage/firstaid/ancient = 1
							)

/datum/outfit/loadout/merchant
	name = "Roving Trader"
	uniform = /obj/item/clothing/under/f13/merchant
	neck = /obj/item/clothing/neck/mantle/brown
	shoes = /obj/item/clothing/shoes/f13/brownie
	head = /obj/item/clothing/head/f13/stormchaser
	gloves = /obj/item/clothing/gloves/color/brown
	glasses = /obj/item/clothing/glasses/f13/biker
	l_hand = /obj/item/gun/ballistic/revolver/caravan_shotgun
	backpack_contents =  list(/obj/item/storage/box/vendingmachine = 1,
							/obj/item/gun/ballistic/automatic/pistol/m1911 = 1
							)

//end new

/datum/outfit/loadout/vault_refugee
	name = "Vaultie"
	uniform = /obj/item/clothing/under/f13/vault
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/fingerless
	suit = /obj/item/clothing/suit/suspenders
	ears = /obj/item/radio/headset
	backpack_contents = list(
		/obj/item/card/id/selfassign = 1,
		/obj/item/gun/ballistic/automatic/pistol/n99 = 1,
		/obj/item/ammo_box/magazine/m10mm_adv/simple = 2,
		/obj/item/pda = 1
		)

/datum/outfit/loadout/warrior
	name = "Wasteland Warrior"
	uniform = /obj/item/clothing/under/f13/settler
	shoes = /obj/item/clothing/shoes/f13/raidertreads
	suit = /obj/item/clothing/suit/armor/light/wastewar
	head = /obj/item/clothing/head/helmet/f13/wastewarhat
	glasses = /obj/item/clothing/glasses/welding
	l_hand = /obj/item/shield/riot/buckler/stop
	backpack_contents = list(
		/obj/item/melee/onehanded/machete/scrapsabre = 1
		)

/datum/outfit/loadout/legioncivilian
	name = "Legion Civilian"
	uniform = /obj/item/clothing/under/f13/doctor
	shoes = /obj/item/clothing/shoes/f13/fancy
	suit = /obj/item/clothing/suit/curator
	head = /obj/item/clothing/head/scarecrow_hat
	gloves = /obj/item/clothing/gloves/color/black
	glasses = /obj/item/clothing/glasses/welding
	id = /obj/item/card/id/dogtag/town/legion
	l_hand = /obj/item/shield/riot/buckler
	backpack_contents = list(
		/obj/item/melee/onehanded/machete = 1
		)

/datum/outfit/loadout/ncrcitizen
	name = "NCR Citizen"
	uniform = /obj/item/clothing/under/f13/ncrcaravan
	shoes = /obj/item/clothing/shoes/f13/tan
	head = /obj/item/clothing/head/f13/cowboy
	gloves = /obj/item/clothing/gloves/color/brown
	id = /obj/item/card/id/dogtag/town/ncr
	l_hand = /obj/item/gun/ballistic/automatic/varmint
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle = 2
		)

/datum/outfit/loadout/wastelander_desert_ranger
	name = "Desert Ranger Scout"
	uniform = /obj/item/clothing/under/f13/desert_ranger_scout
	shoes = /obj/item/clothing/shoes/f13/cowboy
	head = /obj/item/clothing/head/f13/cowboy
	gloves = /obj/item/clothing/gloves/color/brown
	l_hand = /obj/item/gun/ballistic/revolver/colt357
	backpack_contents = list(
		/obj/item/ammo_box/a357 = 2,
		/obj/item/binoculars = 1,
		/obj/item/radio = 1
		)

/*--------------------------------------------------------------*/


/datum/job/undertown/f13undertowntribal
	title = "Savage"
	flag = F13UNDERTOWNTRIBAL
	total_positions = -1
	spawn_positions = -1
	description = "You are a member of a tribe, far away from your homeland. Well, relatively far away. Whatever your reasons for coming here, you've found yourself pinned between the ongoing war of the NCR and Caesar's Legion. Try not to get shot."
	supervisors = "the stars above"
	selection_color = "#dddddd"

	outfit = /datum/outfit/job/undertown/f13undertowntribal

	access = list()
	minimal_access = list()

	loadout_options = list(
	/datum/outfit/loadout/brawler,
	/datum/outfit/loadout/spearman,
	/datum/outfit/loadout/shaman,
	/datum/outfit/loadout/greatkhan,
	/datum/outfit/loadout/wayfarermelee,
	/datum/outfit/loadout/wayfarerranged,
	/datum/outfit/loadout/wayfarershaman,
	/datum/outfit/loadout/whitelegsmelee,
	/datum/outfit/loadout/whitelegsranged,
	/datum/outfit/loadout/whitelegsshaman,
	/datum/outfit/loadout/deadhorsesmelee,
	/datum/outfit/loadout/deadhorsesranged,
	/datum/outfit/loadout/deadhorsesshaman,
	/datum/outfit/loadout/sorrowshunter,
	/datum/outfit/loadout/sorrowsshaman,
	/datum/outfit/loadout/eightiesmelee,
	/datum/outfit/loadout/eightiesranged,
	/datum/outfit/loadout/eightiesshaman,
	/datum/outfit/loadout/rustwalkersscipher,
	/datum/outfit/loadout/rustwalkersscrapper,
	/datum/outfit/loadout/rustwalkersshaman,
	/datum/outfit/loadout/bonedancerexile
	)

/datum/outfit/job/undertown/f13undertowntribal/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_TRIBAL, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_TRAPPER, src)
	ADD_TRAIT(H, TRAIT_MACHINE_SPIRITS, src)
	ADD_TRAIT(H, TRAIT_AUTO_DRAW, src)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	H.grant_language(/datum/language/tribal)
	var/list/recipes = list(
		/datum/crafting_recipe/tribal_pa,
		/datum/crafting_recipe/tribal_pa_helmet,
		/datum/crafting_recipe/tribal_combat_armor,
		/datum/crafting_recipe/tribal_combat_armor_helmet,
		/datum/crafting_recipe/tribal_r_combat_armor,
		/datum/crafting_recipe/tribal_r_combat_armor_helmet,
		/datum/crafting_recipe/tribalwar/chitinarmor,
		/datum/crafting_recipe/tribalwar/deathclawspear,
		/datum/crafting_recipe/tribalwar/lightcloak,
		/datum/crafting_recipe/tribalwar/legendaryclawcloak,
		/datum/crafting_recipe/warpaint,
		/datum/crafting_recipe/tribalradio,
		/datum/crafting_recipe/tribalwar/goliathcloak,
		/datum/crafting_recipe/tribalwar/bonebow,
		/datum/crafting_recipe/tribalwar/tribe_bow,
		/datum/crafting_recipe/tribalwar/sturdybow,
		/datum/crafting_recipe/tribalwar/warclub,
		/datum/crafting_recipe/tribalwar/silverbow,
		/datum/crafting_recipe/tribalwar/arrowbone,
		/datum/crafting_recipe/tribalwar/bonespear,
		/datum/crafting_recipe/tribalwar/bonecodpiece,
		/datum/crafting_recipe/tribalwar/bracers,
		/datum/crafting_recipe/tribal/bonetalisman,
		/datum/crafting_recipe/tribal/bonebag,
		/datum/crafting_recipe/tribalwar/spearquiver
	)
	for(var/datum/crafting_recipe/recipe as() in recipes)
		H.mind.teach_crafting_recipe(recipe)
	H.grant_language(/datum/language/tribal)


/datum/outfit/job/undertown/f13undertowntribal
	name = "Tribal"
	jobtype = /datum/job/undertown/f13undertowntribal

	id = null
	ears = null
	belt = /obj/item/melee/onehanded/knife/bone
	uniform =     /obj/item/clothing/under/f13/settler
	box =         /obj/item/storage/survivalkit_tribal
	shoes =     /obj/item/clothing/shoes/sandal
	gloves =    /obj/item/clothing/gloves/f13/handwraps
	r_hand = /obj/item/book/granter/trait/selection/tribal
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/healingpowder = 2,
		/obj/item/warpaint_bowl = 1,
		/obj/item/flashlight/lantern = 1
		)

//Generic Tribals
/datum/outfit/loadout/brawler
	name = "Tribal Brawler"
	suit = /obj/item/clothing/suit/armor/f13/tribal
	head = /obj/item/clothing/head/helmet/f13/deathskull
	backpack_contents = list(
		/obj/item/twohanded/fireaxe/bmprsword = 1,
		/obj/item/restraints/legcuffs/bola = 2,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2,
		/obj/item/stack/medical/gauze = 1
		)

/datum/outfit/loadout/spearman
	name = "Tribal Spearman"
	suit = /obj/item/clothing/suit/armored/light/tribalraider
	head = /obj/item/clothing/head/helmet/f13/fiend
	mask = /obj/item/clothing/mask/facewrap
	neck = /obj/item/clothing/neck/mantle/gray
	backpack_contents = list(
		/obj/item/twohanded/spear = 1,
		/obj/item/reagent_containers/pill/patch/bitterdrink = 2
		)

/datum/outfit/loadout/shaman
	name = "Tribal Shaman"
	suit = /obj/item/clothing/suit/hooded/cloak/desert
	backpack_contents = list(
		/obj/item/storage/bag/plants = 1,
		/obj/item/cultivator = 1,
		/obj/item/reagent_containers/glass/bucket/wood = 1,
		/obj/item/twohanded/sledgehammer/warmace = 1,
		/obj/item/melee/onehanded/knife/ritualdagger = 1,
		/obj/item/stack/medical/gauze/improvised = 1,
		/obj/item/reagent_containers/pill/patch/healingpowder = 1,
		/obj/item/book/granter/crafting_recipe/tribal = 1
	)

/datum/outfit/loadout/greatkhan
	name = "Great Khan"
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/khan_jacket
	head = /obj/item/clothing/head/helmet/f13/khan
	shoes = /obj/item/clothing/shoes/f13/military/khan
	uniform = /obj/item/clothing/under/f13/khan
	gloves = /obj/item/melee/unarmed/brass/spiked
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/jet = 2,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 1,
		/obj/item/reagent_containers/pill/patch/turbo = 2,
		)

//White Legs
/datum/outfit/loadout/whitelegsmelee
	name = "White Legs Bone-Breaker"
	suit = /obj/item/clothing/suit/f13/tribal/light/whitelegs
	backpack_contents = list(
		/obj/item/clothing/under/f13/whitelegs = 1,
		/obj/item/clothing/under/f13/female/whitelegs = 1,
		/obj/item/melee/unarmed/maceglove = 1,
		/obj/item/gun/ballistic/automatic/pistol/ninemil = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 1
	)

/datum/outfit/loadout/whitelegsranged
	name = "White Legs Storm-Drummer"
	suit = /obj/item/clothing/suit/f13/tribal/whitelegs
	backpack_contents = list(
		/obj/item/clothing/under/f13/whitelegs = 1,
		/obj/item/clothing/under/f13/female/whitelegs = 1,
		/obj/item/gun/ballistic/automatic/smg/tommygun/whitelegs = 1,
		/obj/item/gun/ballistic/automatic/pistol/ninemil = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 1,
		/obj/item/ammo_box/magazine/tommygunm45/stick = 2
	)

/datum/outfit/loadout/whitelegsshaman
	name = "White Legs Arm-Makers"
	backpack_contents = list(
		/obj/item/clothing/under/f13/whitelegs = 1,
		/obj/item/clothing/under/f13/female/whitelegs = 1,
		/obj/item/twohanded/fireaxe = 1,
		/obj/item/gun/ballistic/automatic/pistol/ninemil = 1,
		/obj/item/book/granter/crafting_recipe/tribal/whitelegs = 1
	)

//Dead Horses
/datum/outfit/loadout/deadhorsesmelee
	name = "Dead Horses Stalker"
	suit = /obj/item/clothing/suit/f13/tribal/deadhorses
	backpack_contents = list(
		/obj/item/clothing/under/f13/deadhorses = 1,
		/obj/item/clothing/under/f13/female/deadhorses = 1,
		/obj/item/melee/onehanded/club/warclub = 1,
		/obj/item/storage/backpack/spearquiver = 1,
		/obj/item/reagent_containers/pill/patch/healingpowder = 2
	)

/datum/outfit/loadout/deadhorsesranged
	name = "Dead Horses Disciple"
	suit = /obj/item/clothing/suit/f13/tribal/heavy/deadhorses
	backpack_contents = list(
		/obj/item/clothing/under/f13/deadhorses = 1,
		/obj/item/clothing/under/f13/female/deadhorses = 1,
		/obj/item/gun/ballistic/automatic/pistol/m1911 = 1,
		/obj/item/ammo_box/magazine/m45 = 2,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2
	)

/datum/outfit/loadout/deadhorsesshaman
	name = "Dead Horses Shaman"
	backpack_contents = list(
		/obj/item/clothing/under/f13/deadhorses = 1,
		/obj/item/clothing/under/f13/female/deadhorses = 1,
		/obj/item/storage/bag/plants = 1,
		/obj/item/cultivator = 1,
		/obj/item/reagent_containers/glass/bucket/wood = 1,
		/obj/item/reagent_containers/pill/patch/healingpowder = 2,
		/obj/item/book/granter/crafting_recipe/tribal/deadhorses = 1
	)

//Sorrows
/datum/outfit/loadout/sorrowshunter
	name = "Sorrows Hunter-Guardian"
	suit = /obj/item/clothing/suit/f13/tribal/light/sorrows
	backpack_contents = list(
		/obj/item/clothing/under/f13/sorrows = 1,
		/obj/item/clothing/under/f13/female/sorrows = 1,
		/obj/item/melee/onehanded/knife/survival = 1,
		/obj/item/melee/unarmed/yaoguaigauntlet = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2,
		/obj/item/gun/ballistic/bow = 1,
		/obj/item/storage/belt/tribe_quiver = 1,
		/obj/item/book/granter/crafting_recipe/tribal/sorrows = 1
	)

/datum/outfit/loadout/sorrowsshaman
	name = "Sorrows Ink-Shaman"
	backpack_contents = list(
		/obj/item/clothing/under/f13/sorrows = 1,
		/obj/item/clothing/under/f13/female/sorrows = 1,
		/obj/item/storage/bag/plants = 1,
		/obj/item/cultivator = 1,
		/obj/item/reagent_containers/glass/bucket/wood = 1,
		/obj/item/reagent_containers/pill/patch/healingpowder = 2,
		/obj/item/melee/unarmed/yaoguaigauntlet = 1,
		/obj/item/warpaint_bowl = 1,
		/obj/item/toy/crayon/spraycan = 2,
		/obj/item/book/granter/trait/tagger = 1,
		/obj/item/book/granter/crafting_recipe/tribal/sorrows = 1
	)

//Eighties
/datum/outfit/loadout/eightiesmelee
	name = "Eighties Path-Maker"
	suit = /obj/item/clothing/suit/f13/tribal/eighties
	backpack_contents = list(
		/obj/item/clothing/under/f13/eighties = 1,
		/obj/item/clothing/under/f13/female/eighties = 1,
		/obj/item/gun/ballistic/shotgun/trench = 1,
		/obj/item/ammo_box/shotgun/buck = 2,
		/obj/item/reagent_containers/pill/patch/healingpowder = 2,
		/obj/item/reagent_containers/pill/patch/turbo = 2,
		/obj/item/reagent_containers/pill/patch/jet = 2
	)

/datum/outfit/loadout/eightiesranged
	name = "Eighties Road-Warrior"
	suit = /obj/item/clothing/suit/f13/tribal/heavy/eighties
	backpack_contents = list(
		/obj/item/clothing/under/f13/eighties = 1,
		/obj/item/clothing/under/f13/female/eighties = 1,
		/obj/item/gun/ballistic/revolver/single_shotgun = 1,
		/obj/item/ammo_box/shotgun/buck = 1,
		/obj/item/gun/ballistic/automatic/smg/greasegun/worn = 1,
		/obj/item/ammo_box/magazine/greasegun = 2,
		/obj/item/reagent_containers/pill/patch/healingpowder = 2
	)

/datum/outfit/loadout/eightiesshaman
	name = "Eighties Lay-Mechanic"
	suit = /obj/item/clothing/suit/f13/tribal/light/eighties
	backpack_contents = list(
		/obj/item/clothing/under/f13/eighties = 1,
		/obj/item/clothing/under/f13/female/eighties = 1,
		/obj/item/gun/ballistic/revolver/single_shotgun = 1,
		/obj/item/ammo_box/shotgun/slug = 1,
		/obj/item/reagent_containers/pill/patch/healingpowder = 2,
		/obj/item/storage/belt/utility/full = 1,
		/obj/item/book/granter/crafting_recipe/tribal/eighties = 1
	)

//Wayfarers
/datum/outfit/loadout/wayfarermelee
	name = "Wayfarer Warrior"
	suit = /obj/item/clothing/suit/armor/f13/lightcloak
	backpack_contents = list(
		/obj/item/clothing/under/f13/wayfarer = 1,
		/obj/item/clothing/head/helmet/f13/wayfarer/hunter = 1,
		/obj/item/twohanded/spear/bonespear = 1,
		/obj/item/reagent_containers/pill/patch/bitterdrink = 1
	)

/datum/outfit/loadout/wayfarerranged
	name = "Wayfarer Archer"
	suit = /obj/item/clothing/suit/armor/f13/kit
	head = /obj/item/clothing/head/helmet/f13/wayfarer/antler
	neck = /obj/item/clothing/neck/mantle/brown
	backpack_contents = list(
		/obj/item/gun/ballistic/bow/sturdy = 1,
		/obj/item/storage/belt/tribe_quiver/bone = 1,
		/obj/item/storage/belt/tribe_quiver = 1,
		/obj/item/binoculars = 1,
		/obj/item/melee/onehanded/club/warclub = 1
		)

/datum/outfit/loadout/wayfarershaman
	name = "Wayfarer Shaman"
	suit = /obj/item/clothing/suit/armor/f13/lightcloak
	backpack_contents = list(
		/obj/item/storage/bag/plants = 1,
		/obj/item/cultivator = 1,
		/obj/item/reagent_containers/glass/bucket/wood = 1,
		/obj/item/warpaint_bowl = 1,
		/obj/item/melee/onehanded/knife/ritualdagger = 1,
		/obj/item/stack/medical/gauze/improvised = 1,
		/obj/item/reagent_containers/pill/patch/healingpowder = 1,
		/obj/item/book/granter/crafting_recipe/tribal/wayfarer = 1,
	)

//Rustwalkers
/datum/outfit/loadout/rustwalkersscipher
	name = "Rustwalkers Scipher"
	suit = /obj/item/clothing/suit/f13/tribal/rustwalkers
	backpack_contents = list(
		/obj/item/clothing/under/f13/rustwalkers = 1,
		/obj/item/clothing/under/f13/female/rustwalkers = 1,
		/obj/item/gun/ballistic/automatic/autopipe = 1,
		/obj/item/ammo_box/magazine/autopipe = 2,
		/obj/item/reagent_containers/pill/patch/healingpowder = 2,
		/obj/item/circular_saw = 1
	)

/datum/outfit/loadout/rustwalkersscrapper
	name = "Rustwalkers Scrapper"
	suit = /obj/item/clothing/suit/f13/tribal/light/rustwalkers
	backpack_contents = list(
		/obj/item/clothing/under/f13/rustwalkers = 1,
		/obj/item/clothing/under/f13/female/rustwalkers = 1,
		/obj/item/gun/ballistic/revolver/hobo/pepperbox = 1,
		/obj/item/ammo_box/c10mm = 1,
		/obj/item/circular_saw = 1,
		/obj/item/storage/belt/utility/full = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 1
	)

/datum/outfit/loadout/rustwalkersshaman
	name = "Rustwalkers Brain-Jack"
	backpack_contents = list(
		/obj/item/clothing/under/f13/rustwalkers = 1,
		/obj/item/clothing/under/f13/female/rustwalkers = 1,
		/obj/item/gun/ballistic/revolver/hobo/knucklegun = 1,
		/obj/item/ammo_box/c45rev = 2,
		/obj/item/circular_saw = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2,
		/obj/item/storage/belt/utility/full = 1,
		/obj/item/book/granter/crafting_recipe/tribal/rustwalkers = 1
	)

//Bone Dancer
/datum/outfit/loadout/bonedancerexile
	name = "Bone Dancer Exile"
	backpack_contents = list(
		/obj/item/clothing/under/f13/bone = 1,
		/obj/item/clothing/head/helmet/skull/bone = 1,
		/obj/item/book/granter/crafting_recipe/tribal/bone = 1,
		/obj/item/twohanded/spear/bonespear = 1,
		/obj/item/warpaint_bowl = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2
	)

/*--------------------------------------------------------------*/


/datum/job/undertown/f13undertowntribal
	title = "Tribal"
	flag = F13UNDERTOWNTRIBAL
	total_positions = -1
	spawn_positions = -1
	description = "You are a member of a tribe, far away from your homeland. Well, relatively far away. Whatever your reasons for coming here, you've found yourself pinned between the ongoing war of the NCR and Caesar's Legion. Try not to get shot."
	supervisors = "the stars above"
	selection_color = "#dddddd"
	maptype = "undertown"
	mapexclude = list("tribal")

	outfit = /datum/outfit/job/undertown/f13undertowntribal

	access = list()
	minimal_access = list()

/datum/outfit/job/undertown/f13undertowntribal/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_TRIBAL, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_TRAPPER, src)
	ADD_TRAIT(H, TRAIT_MACHINE_SPIRITS, src)
	ADD_TRAIT(H, TRAIT_AUTO_DRAW, src)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_NOGUNS, src)
	H.grant_language(/datum/language/tribal)
	H.human_holder.add_blocked_language(/datum/language/common)
	var/list/recipes = list(
		/datum/crafting_recipe/tribal_pa,
		/datum/crafting_recipe/tribal_pa_helmet,
		/datum/crafting_recipe/tribal_combat_armor,
		/datum/crafting_recipe/tribal_combat_armor_helmet,
		/datum/crafting_recipe/tribal_r_combat_armor,
		/datum/crafting_recipe/tribal_r_combat_armor_helmet,
		/datum/crafting_recipe/tribalwar/chitinarmor,
		/datum/crafting_recipe/tribalwar/deathclawspear,
		/datum/crafting_recipe/tribalwar/lightcloak,
		/datum/crafting_recipe/tribalwar/legendaryclawcloak,
		/datum/crafting_recipe/warpaint,
		/datum/crafting_recipe/tribalradio,
		/datum/crafting_recipe/tribalwar/goliathcloak,
		/datum/crafting_recipe/tribalwar/bonebow,
		/datum/crafting_recipe/tribalwar/tribe_bow,
		/datum/crafting_recipe/tribalwar/sturdybow,
		/datum/crafting_recipe/tribalwar/warclub,
		/datum/crafting_recipe/tribalwar/silverbow,
		/datum/crafting_recipe/tribalwar/arrowbone,
		/datum/crafting_recipe/tribalwar/bonespear,
		/datum/crafting_recipe/tribalwar/bonecodpiece,
		/datum/crafting_recipe/tribalwar/bracers,
		/datum/crafting_recipe/tribal/bonetalisman,
		/datum/crafting_recipe/tribal/bonebag,
		/datum/crafting_recipe/tribalwar/spearquiver
	)
	for(var/datum/crafting_recipe/recipe as() in recipes)
		H.mind.teach_crafting_recipe(recipe)


/datum/outfit/job/undertown/f13undertowntribal
	name = "Tribal"
	jobtype = /datum/job/undertown/f13undertowntribal

	id = null
	ears = null
	belt = /obj/item/melee/onehanded/knife/bone
	uniform =     /obj/item/clothing/under/f13/settler
	box =         /obj/item/storage/survivalkit_tribal
	shoes =     /obj/item/clothing/shoes/sandal
	gloves =    /obj/item/clothing/gloves/f13/handwraps
	r_hand = /obj/item/book/granter/trait/selection/tribal
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/healingpowder = 2,
		/obj/item/warpaint_bowl = 1,
		/obj/item/flashlight/lantern = 1
		)
	
*/

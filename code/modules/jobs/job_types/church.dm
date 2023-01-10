/datum/job/church
	department_flag = CHURCH
	selection_color = "#d580ff"
	faction = FACTION_CHURCH
	exp_type = EXP_TYPE_FALLOUT
	maptype = "yuma"


/datum/job/church/f13highpriest
	title = "High Priest"
	flag = F13HIGHPRIEST
	head_announce = list("Security")
	department_flag = CHURCH
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Holy Father"
	req_admin_notify = 1
	description = "You are the leader of the Church, at least for now. Your sworn duty is to expand and protect the faith, through any means necessary, in preparation for the day of retribution that is to come. You are the spiritual leader of the faith, and are expected to give sermons, advise members, and perform all major rituals. You are beholden to no one but the Father above, and the Servitors answer directly to you."
	selection_color = "#c167ee"
	forbids = "Exposing the secrets of the Church, fraternizing with the NCR, treating patients for nothing in return, consuming alcohol, and using chems."
	enforces = "Preaching the faith, following the faith's internal structure and rules."
	exp_type = EXP_TYPE_CHURCH
	exp_requirements = 0

	outfit = /datum/outfit/job/church/f13highpriest
	access = list(ACCESS_COTC, ACCESS_COTC_ARMORY, ACCESS_COTC_SECRET)
	minimal_access = list(ACCESS_COTC, ACCESS_COTC_ARMORY, ACCESS_COTC_SECRET)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/church,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/church,
		),
	)

/datum/outfit/job/church/f13highpriest
	name = "High Priest"
	jobtype = /datum/job/church/f13highpriest

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
/datum/outfit/job/church/f13highpriest/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
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

/datum/job/church/f13servitormedici
	title = "Servitor Medici"
	flag = F13SERVITORMEDICI
	department_flag = CHURCH
	total_positions = 1
	spawn_positions = 1
	supervisors = "the High Priest and the All Father"
	description = "You are an inducted member of the Church’s inner circle, sworn to direct the medical arm of the faith. You are expected to be knowledgeable about all medical matters, and to put the interests of your faith above those of your patients. Your role is to direct the Acolytes and ensure they provide excellent care while staying true to Church dogma."
	selection_color = "#d580ff"
	forbids = "Exposing the secrets of the Church, fraternizing with the NCR, treating patients for nothing in return, consuming alcohol, and using chems."
	enforces = "Preaching the faith, following the faith's internal structure and rules."
	exp_type = EXP_TYPE_CHURCH
	exp_requirements = 0

	outfit = /datum/outfit/job/church/f13servitormedici
	access = list(ACCESS_COTC, ACCESS_COTC_ARMORY, ACCESS_COTC_SECRET)
	minimal_access = list(ACCESS_COTC, ACCESS_COTC_ARMORY, ACCESS_COTC_SECRET)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/church,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/church,
		),
	)

/datum/outfit/job/church/f13servitormedici
	name = "Servitor Medici"
	jobtype = /datum/job/church/f13servitormedici

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

/datum/outfit/job/church/f13servitormedici/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
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

/datum/job/church/f13servitormilitant
	title = "Servitor Militant"
	flag = F13SERVITORMILITANT
	department_flag = CHURCH
	total_positions = 1
	spawn_positions = 1
	supervisors = "the High Priest and the All Father"
	description = "You are an inducted member of the Church’s inner circle, sworn to lead the faith’s military forces into battle. You know much of the secrets that dwell within the Faith’s inner sanctum, and you know what is at stake if they are discovered. You directly command the Church’s Proselytizers, and answer directly to the High Priest."
	selection_color = "#d580ff"
	forbids = "Exposing the secrets of the Church, fraternizing with the NCR, treating patients for nothing in return, consuming alcohol, and using chems."
	enforces = "Preaching the faith, following the faith's internal structure and rules."
	exp_type = EXP_TYPE_CHURCH
	exp_requirements = 0

	outfit = /datum/outfit/job/church/f13servitormilitant
	access = list(ACCESS_COTC, ACCESS_COTC_ARMORY, ACCESS_COTC_SECRET)
	minimal_access = list(ACCESS_COTC, ACCESS_COTC_ARMORY, ACCESS_COTC_SECRET)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/church,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/church,
		),
	)

/datum/outfit/job/church/f13servitormilitant
	name = "Servitor Militant"
	jobtype = /datum/job/church/f13servitormilitant

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

/datum/outfit/job/church/f13servitormilitant/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.grant_language(/datum/language/shorthand)

/*--------------------------------------------------------------*/

/datum/job/church/f13proselytizer
	title = "Proselytizer"
	flag = F13PROSELYTIZER
	department_flag = CHURCH
	total_positions = 2
	spawn_positions = 2
	supervisors = "the High Priest and the All Father"
	description = "You are the strong right arm of the Church. You answer directly to the Servitor Militant. Your role is to guard the Church, put pressure upon outsiders, drum up business with your bludgeon, and collect debts."
	selection_color = "#d580ff"
	forbids = "Exposing the secrets of the Church, fraternizing with the NCR, treating patients for nothing in return, consuming alcohol, and using chems."
	enforces = "Preaching the faith, following the faith's internal structure and rules."
	exp_type = EXP_TYPE_CHURCH
	exp_requirements = 0

	outfit = /datum/outfit/job/church/f13proselytizer
	access = list(ACCESS_COTC, ACCESS_COTC_ARMORY)
	minimal_access = list(ACCESS_COTC, ACCESS_COTC_ARMORY)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/church,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/church,
		),
	)

/datum/outfit/job/church/f13proselytizer
	name = "Proselytizer"
	jobtype = /datum/job/church/f13proselytizer

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

/datum/job/church/f13acolyte
	title = "Acolyte"
	flag = F13ACOLYTE
	department_flag = CHURCH
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Servitor Medici and the All Father"
	description = "You are a trained healer and a sworn member of the Church. You follow all orders given to you by the Servitor Medici and the High Priest. The faith does not give medical services freely, those who are unable to pay will be held in the Church until their medical fees are paid, or they agree to join the faith."
	selection_color = "#d580ff"
	forbids = "Exposing the secrets of the Church, fraternizing with the NCR, treating patients for nothing in return, consuming alcohol, and using chems."
	enforces = "Preaching the faith, following the faith's internal structure and rules."
	exp_type = EXP_TYPE_CHURCH
	exp_requirements = 0

	outfit = /datum/outfit/job/church/f13acolyte
	access = list(ACCESS_COTC, ACCESS_COTC_ARMORY)
	minimal_access = list(ACCESS_COTC, ACCESS_COTC_ARMORY)

	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/church,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/church,
		),
	)

/datum/outfit/job/church/f13acolyte
	name = "Acolyte"
	jobtype = /datum/job/church/f13acolyte

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

/datum/outfit/job/church/f13acolyte/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
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

/datum/job/church/f13neophyte
	title = "Neophyte"
	flag = F13NEOPHYTE
	department_flag = CHURCH
	total_positions = 4
	spawn_positions = 4
	supervisors = "Servitors and up"
	description = "By some means or another you have become indebted to the Church. There was none to pay your debt, so all that was left was to give your body and mind to the Church. Attend to menial duties such as cleaning, farming, and cooking."
	selection_color = "#d580ff"
	forbids = "Exposing the secrets of the Church, fraternizing with the NCR, treating patients for nothing in return, consuming alcohol, and using chems."
	enforces = "Preaching the faith, following the faith's internal structure and rules."
	exp_type = EXP_TYPE_CHURCH
	exp_requirements = 0

	outfit = /datum/outfit/job/church/neophyte

	access = list(ACCESS_COTC)
	minimal_access = list(ACCESS_COTC)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/church,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/church,
		),
	)

/datum/outfit/job/church/neophyte
	name = "Neophyte"
	jobtype = /datum/job/church/f13neophyte

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

/datum/outfit/job/church/neophyte/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/stimpak5)
	uniform = pick(
		/obj/item/clothing/under/f13/settler,
		/obj/item/clothing/under/f13/brahminm,
		/obj/item/clothing/under/f13/machinist,
		/obj/item/clothing/under/f13/lumberjack,
		/obj/item/clothing/under/f13/roving)

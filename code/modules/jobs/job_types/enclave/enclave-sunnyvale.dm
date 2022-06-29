//It looks like var/faction controls what becomes visible on setup. Should likely be fixed or something, but I'm not doing it.
/datum/job/enclave
	department_flag = ENCLAVE
	selection_color = "#323232"
	faction = FACTION_ENCLAVE
	exp_type = EXP_TYPE_FALLOUT
	maptype = "sunnyvale"

	access = list(ACCESS_ENCLAVE)
	minimal_access = list(ACCESS_ENCLAVE)
	forbids = "Enclave taboos: Aiding Brotherhood members in any way no matter how small."
	enforces = "Enclave rules: Stay in uniform. Act mature and respectful. Obey orders and always remember you are fighting for the only true legitimate power in this land of savages. Wearing gasmasks outside the compound is encouraged but not required."
	objectivesList = list("Department of Defense advisory: Collect resources and produce more Patribots, attrition is depleting our reserves.","Department of Defense advisory: Establish checkpoints to show presence, they must not forget who is the legitimate goverment.", "Science Divison advisory: Capture human subjects for experiments, alive. We have some new neurotoxin grenades we wish to do final tests with before field deployment.")

/datum/outfit/job/enclave
	id = null
	backpack = /obj/item/storage/backpack/enclave
	satchel = /obj/item/storage/backpack/satchel/enclave
	ears = /obj/item/radio/headset/headset_enclave
	glasses = /obj/item/clothing/glasses/night/f13/enclave
	belt = /obj/item/storage/belt/military/assault/enclave
	r_pocket = /obj/item/flashlight/seclite
	shoes = /obj/item/clothing/shoes/f13/enclave/serviceboots
	box = /obj/item/storage/survivalkit_adv

/datum/outfit/job/enclave/peacekeeper
	id = /obj/item/card/id/dogtag/enclave/trooper
	mask = /obj/item/clothing/mask/gas/enclave
	neck = /obj/item/storage/belt/holster/legholster
	uniform = /obj/item/clothing/under/f13/enclave/peacekeeper
	gloves = /obj/item/clothing/gloves/f13/military

/datum/outfit/job/enclave/noncombat
	id = /obj/item/card/id/dogtag/enclave/noncombatant
	uniform = /obj/item/clothing/under/f13/enclave/science

/datum/outfit/job/enclave/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)


///////////////////////
/// Captain - Admin ///
///////////////////////

/datum/job/enclave/enclavecpt
	title = "Enclave Captain"
	flag = F13USCPT
	total_positions = 0
	spawn_positions = 0
	head_announce = list("Security")
	req_admin_notify = 1
	access = list(ACCESS_ENCLAVE, ACCESS_CHANGE_IDS)
	supervisors = "Enclave Department of the Army."
	outfit = /datum/outfit/job/enclave/peacekeeper/enclavecpt

/datum/outfit/job/enclave/peacekeeper/enclavecpt	// Hellfire Power Armor, Glock 86a
	name = "Enclave Captain"
	jobtype = /datum/job/enclave/enclavecpt
	head = /obj/item/clothing/head/helmet/f13/power_armor/advanced/hellfire
	uniform = /obj/item/clothing/under/f13/enclave/officer
	suit = /obj/item/clothing/suit/armor/f13/power_armor/advanced/hellfire
	suit_store = /obj/item/gun/energy/laser/plasma/glock/extended
	accessory = /obj/item/clothing/accessory/ncr/CPT
	id = /obj/item/card/id/dogtag/enclave/officer
	ears = /obj/item/radio/headset/headset_enclave/command

	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak/super = 3,
		/obj/item/stock_parts/cell/ammo/ec = 2,
		/obj/item/megaphone = 1,
		/obj/item/pda = 1,
		/obj/item/storage/bag/money/small/wastelander = 1,
		/obj/item/melee/classic_baton/telescopic = 1
		)

/datum/outfit/job/enclave/peacekeeper/enclavecpt/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_PA_WEAR, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)
	if(H.mind)
		var/obj/effect/proc_holder/spell/terrifying_presence/S = new /obj/effect/proc_holder/spell/terrifying_presence
		H.mind.AddSpell(S)


//Sergeant (These are meant to be the bodyguards of the scientists and bunker)

/datum/job/enclave/enclavesgt
	title = "Enclave Sergeant"
	flag = F13USSGT
	total_positions = 2
	spawn_positions = 2
	description = "Assigned to the bunker, your job is to guard not only it but the scientists within."
	supervisors = ""	//Nobody is above them for Sunnyvale
	outfit = /datum/outfit/job/enclave/peacekeeper/enclavesgt
	exp_requirements = 1500

	loadout_options = list(
		/datum/outfit/loadout/sgt_ballistics,	// R91 Rifle
		/datum/outfit/loadout/sgt_laser, 	// AER9
		)

/datum/outfit/job/enclave/peacekeeper/enclavesgt
	name = "Enclave Sergeant"
	jobtype = /datum/job/enclave/enclavesgt
	suit = /obj/item/clothing/suit/armor/f13/combat/mk2/remnant
	head = /obj/item/clothing/head/helmet/f13/combat/mk2/remnant
	accessory = /obj/item/clothing/accessory/enclave/sergeant

	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2,
		/obj/item/grenade/frag = 1,
		/obj/item/pda = 1,
		/obj/item/storage/bag/money/small/wastelander = 1,
		/obj/item/melee/onehanded/knife/survival = 1,
		/obj/item/clothing/head/f13/enclave/peacekeeper = 1,
		)

/datum/outfit/loadout/sgt_ballistics
	name = "Frontline Operator"
	suit_store = /obj/item/gun/ballistic/automatic/assault_rifle
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle = 3,
		)

/datum/outfit/loadout/sgt_laser
	name = "Laser Support"
	suit_store = /obj/item/gun/energy/laser/aer9
	backpack_contents = list(
		/obj/item/stock_parts/cell/ammo/mfc = 3,
		)

/datum/outfit/job/enclave/peacekeeper/enclavesgt/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)

//Specialist (Turn this into the scientist's leader?)

/datum/job/enclave/f13specialist
	title = "Enclave Specialist"
	flag = F13USSPECIALIST
	total_positions = 1
	spawn_positions = 1
	description = "You are an operative for the remnants of the Enclave. You, unlike the normal privates, have recieved specialist training in either engineering or medicine."
	supervisors = "The Sergeants."	//Change this if needed, idk jack and shit about military ranking
	outfit = /datum/outfit/job/enclave/peacekeeper/f13specialist
	exp_requirements = 800

	loadout_options = list(
		/datum/outfit/loadout/combatmedic, // Medical Equipment
		/datum/outfit/loadout/combatengie, // Grenade Launcher
		)

/datum/outfit/job/enclave/peacekeeper/f13specialist
	name = "Enclave Specialist"
	jobtype = /datum/job/enclave/f13specialist
	suit = /obj/item/clothing/suit/armor/bulletproof
	suit_store = /obj/item/gun/ballistic/automatic/smg/mp5
	accessory = /obj/item/clothing/accessory/enclave/specialist

	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2,
		/obj/item/pda = 1,
		/obj/item/storage/bag/money/small/wastelander = 1,
		/obj/item/ammo_box/magazine/uzim9mm = 2,
		/obj/item/melee/onehanded/knife/survival = 1,
		)

/datum/outfit/loadout/combatmedic
	name = "Combat Medic"
	mask = /obj/item/clothing/mask/surgical
	gloves = /obj/item/clothing/gloves/color/latex/nitrile
	head = /obj/item/clothing/head/beret/enclave/science
	backpack_contents = list(
		/obj/item/storage/firstaid/ancient = 1,
		/obj/item/gun/medbeam = 1,
		/obj/item/book/granter/trait/chemistry = 1,
		/obj/item/book/granter/trait/midsurgery = 1
		)

/datum/outfit/loadout/combatengie
	name = "Combat Engineer"
	mask = /obj/item/clothing/mask/gas/welding
	gloves = /obj/item/clothing/gloves/color/yellow
	head = /obj/item/clothing/head/hardhat/orange
	suit_store = /obj/item/gun/ballistic/revolver/grenadelauncher
	backpack_contents = list(
		/obj/item/storage/belt/utility = 1,
		/obj/item/ammo_box/a40mm = 2,
		/obj/item/shovel/trench = 1
	)


//NON-COMBATANTS

//Scientist
/datum/job/enclave/enclavesci
	title = "Enclave Scientist"
	flag = F13USSCIENTIST
	access = list(ACCESS_ENCLAVE, ACCESS_ENCLAVE_COMMAND)
	total_positions = 4
	spawn_positions = 4
	description = "You're responsible for the maintenance of the base, the knowledge you've accumulated over the years is the only thing keeping the remnants alive. You've dabbled in enough to be considered a Professor in your field of research, but they call you Doctor. Support your dwindling forces and listen to the Lieutenant."
	supervisors = "Enclave Research and Development Division."
	outfit = /datum/outfit/job/enclave/noncombat/enclavesci
	exp_requirements = 2000

/datum/outfit/job/enclave/noncombat/enclavesci
	name = "Enclave Scientist"
	jobtype = /datum/job/enclave/enclavesci
	head = /obj/item/clothing/head/helmet/f13/envirosuit
	mask =/obj/item/clothing/mask/breath/medical
	gloves = /obj/item/clothing/gloves/color/latex/nitrile
	suit = /obj/item/clothing/suit/armor/f13/environmentalsuit
	belt = /obj/item/storage/belt/medical
	suit_store =  /obj/item/tank/internals/oxygen

	backpack_contents = list(
		/obj/item/storage/survivalkit_aid_adv = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2,
		/obj/item/grenade/chem_grenade/cleaner = 1,
		/obj/item/pda = 1,
		/obj/item/gun/energy/gammagun = 1,
		/obj/item/stock_parts/cell/ammo/mfc = 2,
		/obj/item/storage/bag/money/small/wastelander = 1,
		/obj/item/melee/onehanded/knife/survival = 1,
		/obj/item/clothing/head/beret/enclave/science = 1,
		)

/datum/outfit/job/enclave/noncombat/enclavesci/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_MEDICALEXPERT, src)
	ADD_TRAIT(H, TRAIT_CYBERNETICIST_EXPERT, src)
	ADD_TRAIT(H, TRAIT_SURGERY_HIGH, src)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_UNETHICAL_PRACTITIONER, src) // Brainwashing
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/USAeyebot,)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/jet,)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/turbo,)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/psycho,)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/medx,)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/buffout)

//Bunker Duty
/datum/job/enclave/f13BDUTY
	title = "Enclave Bunker Duty"
	flag = F13USBDUTY
	total_positions = 2	//I'm not increasing this to 3 until testing has been done, but regardless I don't think it should be higher
	spawn_positions = 2
	description = "You were assigned to bunker duty this week, clean up, cook up, preach up or chem up your fellow Americans and remember don't join any raids or battles from your fellow Americans, after all it's none of your concern this week is it."
	enforces = "You are not permited to leave the base. You are a non-combatant. You cannot join any raids or battles on the surface."
	supervisors = "Everyone else."
	outfit = /datum/outfit/job/enclave/noncombat/f13BDUTY
	exp_type = EXP_TYPE_FALLOUT
	exp_requirements = 100

	loadout_options = list(
		/datum/outfit/loadout/bunkerduty_botany,
		/datum/outfit/loadout/bunkerduty_engi,
		/datum/outfit/loadout/bunkerduty_janny,
		/datum/outfit/loadout/bunkerduty_chaplain,
		/datum/outfit/loadout/bunkerduty_cook,
		)

/datum/outfit/job/enclave/noncombat/f13BDUTY
	name = "Enclave Bunker Duty"
	jobtype = /datum/job/enclave/f13BDUTY
	id = /obj/item/card/id/dogtag/enclave/trooper
	glasses = /obj/item/clothing/glasses/sunglasses/big
	uniform = /obj/item/clothing/under/f13/enclave/peacekeeper

	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2,
		/obj/item/storage/bag/money/small/wastelander = 1,
		/obj/item/melee/onehanded/knife/survival = 1,
		)

/datum/outfit/loadout/bunkerduty_botany
	name = "Botanical Technician"
	mask = /obj/item/clothing/mask/bandana
	suit = /obj/item/clothing/suit/overalls
	gloves = /obj/item/clothing/gloves/botanic_leather
	backpack_contents = list(
		/obj/item/storage/bag/plants = 1,
		/obj/item/plant_analyzer = 1,
		)

/datum/outfit/loadout/bunkerduty_engi
	name = "Maintenance Technician"
	head = /obj/item/clothing/head/hardhat
	suit = /obj/item/clothing/suit/hazardvest
	gloves = /obj/item/clothing/gloves/color/yellow
	backpack_contents = list(
		/obj/item/storage/belt/utility = 1,
		/obj/item/stack/sheet/metal/twenty = 1,
		/obj/item/stack/sheet/glass/ten = 2,
		/obj/item/stack/cable_coil/thirty = 2,
		)

/datum/outfit/loadout/bunkerduty_janny
	name = "Sanitation Technician"
	gloves = /obj/item/clothing/gloves/color/black
	head = /obj/item/clothing/head/soft/purple
	shoes = /obj/item/clothing/shoes/galoshes
	backpack_contents = list(
		/obj/item/reagent_containers/spray/cleaner = 1,
		/obj/item/mop/advanced = 1,
		/obj/item/grenade/chem_grenade/cleaner = 3,
		)

/datum/outfit/loadout/bunkerduty_chaplain
	name = "Spiritual Technician"
	mask = /obj/item/clothing/mask/surgical
	suit = /obj/item/clothing/suit/f13/autumn
	backpack_contents = list(
		/obj/item/storage/book/bible = 2,
		/obj/item/pen = 1,
		/obj/item/folder = 1,
		)

/datum/outfit/loadout/bunkerduty_cook
	name = "Culinary Technician"
	head = /obj/item/clothing/head/chefhat
	suit = /obj/item/clothing/neck/apron/housewife
	backpack_contents = list(
		/obj/item/storage/box/ingredients/wildcard = 4,
		/obj/item/kitchen/knife/butcher = 1,
		)

// Enclave Citizen
// Really only used for ID console
/datum/job/enclave/f13enclavecitizen
	title = "American Citizen"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/enclave/f13enclavecitizen

/datum/outfit/job/enclave/f13enclavecitizen
	name = "American Citizen (Role)"
	uniform = /obj/item/clothing/under/f13/vault13
	shoes = /obj/item/clothing/shoes/jackboots
	id = /obj/item/card/id/dogtag/town/enclave

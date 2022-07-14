//This is the file that handles donator loadout items.

/datum/gear/donator
	name = "IF YOU SEE THIS, PING A CODER RIGHT NOW!"
	slot = SLOT_IN_BACKPACK
	path = /obj/item/storage/belt/holster/ranger45
	category = LOADOUT_CATEGORY_DONATOR
	ckeywhitelist = list("This entry should never appear with this variable set.") //If it does, then that means somebody fucked up the whitelist system pretty hard
	cost = 0

/datum/gear/donator/donortestingbikehorn
	name = "Donor item testing"
	slot = SLOT_IN_BACKPACK
	path = /obj/item/storage/belt/holster/ranger45
	geargroupID = list("DONORTEST") //This is a list mainly for the sake of testing, but geargroupID works just fine with ordinary strings

/////////////////////
///Loadout Boxes///// See kits.dm, use this model for loadouts that have more than one item per character.
/////////////////////
/datum/gear/donator/kits
	slot = SLOT_IN_BACKPACK

/*example
/datum/gear/donator/kits/averyamadeus
	name = "Avery Amadeus' belongings"
	path = /obj/item/storage/box/large/custom_kit/averyamadeus
	ckeywhitelist = list("topbirb")
*/

/* other example
/obj/item/storage/box/large/custom_kit/example/PopulateContents()
    new /obj/item/storage/backpack/security(src)
    new /obj/item/stack/f13Cash/caps/threefivezero(src)
    new /obj/item/gun/ballistic/shotgun/automatic/combat/citykiller(src)
    new /obj/item/ammo_box/shotgun/slug(src)
    new /obj/item/ammo_box/shotgun/slug(src)
    new /obj/item/storage/belt/military(src)
    new /obj/item/pda(src)

/datum/gear/donator/kits/example
    name = "Example Kit"
    path = /obj/item/storage/box/large/custom_kit/example
    ckeywhitelist = list("EXAMPLE")
*/

/obj/item/storage/box/large/custom_kit/snugglytrap/PopulateContents()
	new /obj/item/clothing/neck/mantle/snugglycape(src)
	new /obj/item/mmi/posibrain(src)

/datum/gear/donator/kits/snugglytrap
	name = "Good boy kit"
	path = /obj/item/storage/box/large/custom_kit/snugglytrap
	ckeywhitelist = list("snugglytrap")						

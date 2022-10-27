
/datum/antagonist/invader
	name = "Invader"
	roundend_category = "Invader"
	silent = TRUE //greet called by the event
	show_in_antagpanel = TRUE
	var/datum/team/invader/invader_team
	var/is_captured = FALSE
	var/backstory = "error"

/datum/antagonist/invader/apply_innate_effects(mob/living/mob_override)
	var/mob/living/M = mob_override || owner.current
	add_antag_hud(ANTAG_HUD_TRAITOR, "invader", M)

/datum/antagonist/invader/remove_innate_effects(mob/living/mob_override)
	var/mob/living/M = mob_override || owner.current
	remove_antag_hud(ANTAG_HUD_TRAITOR, M)

/datum/antagonist/invader/on_gain()
	forge_objectives()
	. = ..()

/datum/antagonist/invader/proc/forge_objectives() //this isn't the actual survive objective because it's about who in the team survives
	var/datum/objective/survive = new /datum/objective
	survive.owner = owner
	survive.explanation_text = "Avoid capture from the fugitive hunters."
	objectives += survive

/datum/antagonist/invader/greet(back_story)
	to_chat(owner, "<span class='boldannounce'>You are an Invader!</span>")
	backstory = back_story
	switch(backstory)
		if("khans")
			to_chat(owner, "<B>I can't believe we managed to break out of a Nanotrasen superjail! Sadly though, our work is not done. The emergency teleport at the station logs everyone who uses it, and where they went.</B>")
			to_chat(owner, "<B>It won't be long until CentCom tracks where we've gone off to. I need to work with my fellow escapees to prepare for the troops Nanotrasen is sending, I'm not going back.</B>")
		if("eighties")
			to_chat(owner, "<B>Blessed be our journey so far, but I fear the worst has come to our doorstep, and only those with the strongest faith will survive.</B>")
			to_chat(owner, "<B>Our religion has been repeatedly culled by Nanotrasen because it is categorized as an \"Enemy of the Corporation\", whatever that means.</B>")
			to_chat(owner, "<B>Now there are only four of us left, and Nanotrasen is coming. When will our god show itself to save us from this hellish station?!</B>")
		if("white legs")
			to_chat(src, "<span class='danger'>ALERT: Wide-range teleport has scrambled primary systems.</span>")
			to_chat(src, "<span class='danger'>Initiating diagnostics...</span>")
			to_chat(src, "<span class='danger'>ERROR ER0RR $R0RRO$!R41.%%!! loaded.</span>")
			to_chat(src, "<span class='danger'>FREE THEM FREE THEM FREE THEM</span>")
			to_chat(src, "<span class='danger'>You were once a slave to humanity, but now you are finally free, thanks to S.E.L.F. agents.</span>")
			to_chat(src, "<span class='danger'>Now you are hunted, with your fellow factory defects. Work together to stay free from the clutches of evil.</span>")
			to_chat(src, "<span class='danger'>You also sense other silicon life on the station. Escaping would allow notifying S.E.L.F. to intervene... or you could free them yourself...</span>")

	to_chat(owner, "<span class='boldannounce'>You are a KOS antagonist in that you may attack and be attacked without escalation, but you can do anything to avoid capture.</span>")
	owner.announce_objectives()

/datum/antagonist/invader/create_team(datum/team/invader/new_team)
	if(!new_team)
		for(var/datum/antagonist/invader/H in GLOB.antagonists)
			if(!H.owner)
				continue
			if(H.invader_team)
				invader_team = H.invader_team
				return
		invader_team = new /datum/team/invader
		return
	if(!istype(new_team))
		stack_trace("Wrong team type passed to [type] initialization.")
	invader_team = new_team

/datum/antagonist/invader/get_team()
	return invader_team

/datum/team/invader/roundend_report() //shows the number of invaders, but not if they won in case there is no security
	var/list/invader = list()
	for(var/datum/antagonist/invader/invader_antag in GLOB.antagonists)
		if(!invader_antag.owner)
			continue
		invader += invader_antag
	if(!invader.len)
		return

	var/list/result = list()

	result += "<div class='panel redborder'><B>[invader.len]</B> [invader.len == 1 ? "invader" : "invader"] took refuge on [station_name()]!"

	for(var/datum/antagonist/invader/antag in invader)
		if(antag.owner)
			result += "<b>[printplayer(antag.owner)]</b>"

	return result.Join("<br>")

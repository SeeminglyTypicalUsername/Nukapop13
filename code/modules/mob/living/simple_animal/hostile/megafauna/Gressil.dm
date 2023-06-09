/mob/living/simple_animal/hostile/megafauna/gressil
	name = "High Priest Gressil"
	desc = "A horrible fusion of man, animal, and something entirely different. It quakes and shudders, looking to be in an immense amount of pain. Blood and other fluids ooze from various gashes and lacerations on its body, punctuated by mouths that gnash and scream."
	health = 2000
	maxHealth = 2000
	attack_verb_continuous = "bites"
	attack_verb_simple = "eviscerates"
	attack_sound = 'sound/weapons/bladeslice.ogg'
	icon = 'icons/fallout/mobs/monsters/freaks.dmi'
	icon_state = "abomination"
	icon_living = "abomination"
	icon_dead = "abomination_dead"
	friendly_verb_continuous = "stares down"
	friendly_verb_simple = "stare down"
	speak_emote = list("screams", "clicks", "chitters", "barks", "moans", "growls", "meows", "reverberates", "roars", "squeaks", "rattles", "exclaims", "yells", "remarks", "mumbles", "jabbers", "stutters", "seethes")
	var/static/list/abom_sounds
	armour_penetration = 0.7
	melee_damage_lower = 45
	melee_damage_upper = 45
	speed = 0.5
	move_to_delay = 6
	ranged = 1
	faction = list("church of the Open Palm")
//	pixel_x = -32
	gender = MALE
	wander = TRUE
//	can_devour = TRUE
	stat_attack = UNCONSCIOUS
	decompose = FALSE
	var/grabbing = 0
	var/charging = FALSE
	var/grabbing_cooldown = 0
	var/spawn_text = "digs its out from"
	deathmessage = "wails as its form shudders and violently comes to a stop."
	death_sound = 'sound/voice/abomburning.ogg'

	footstep_type = null

/mob/living/simple_animal/hostile/abomination/Initialize()
	. = ..()
	abom_sounds = list('sound/voice/abomination1.ogg', 'sound/voice/abomscream.ogg', 'sound/voice/abommoan.ogg', 'sound/voice/abomscream2.ogg', 'sound/voice/abomscream3.ogg')

/mob/living/simple_animal/hostile/megafauna/gressil/say(message, datum/language/language = null, list/spans = list(), language, sanitize, ignore_spam, forced = null)
	..()
	if(stat)
		return
	var/chosen_sound = pick(abom_sounds)
	playsound(src, chosen_sound, 50, TRUE)

/mob/living/simple_animal/hostile/megafauna/gressil/Life()
	..()
	if(stat)
		return
	if(prob(10))
		var/chosen_sound = pick(abom_sounds)
		playsound(src, chosen_sound, 70, TRUE)

/mob/living/simple_animal/hostile/megafauna/gressil/OpenFire()
	anger_modifier = clamp(((maxHealth - health)/50),0,20)
	if(grabbing)
		return

	if((grabbing_cooldown <= world.time) && !client)
		if(in_melee == TRUE)
			if(prob(80+anger_modifier/2))
				INVOKE_ASYNC(src, .proc/grab_attack)

/mob/living/simple_animal/hostile/megafauna/gressil/AttackingTarget()
	if(!grabbing || !charging)
		return ..()

/mob/living/simple_animal/hostile/megafauna/gressil/DestroySurroundings()
	if(!grabbing || !charging)
		..()

/mob/living/simple_animal/hostile/megafauna/gressil/Move()
	if(!grabbing || !charging)
		if(!stat)
			playsound(src.loc, 'sound/effects/meteorimpact.ogg', 200, 1, 2, 1)
			..()

/mob/living/simple_animal/hostile/megafauna/gressil/Goto(target, delay, minimum_distance)
	if(!grabbing || !charging)
		..()

/mob/living/simple_animal/hostile/megafauna/gressil/proc/grab_attack(atom/movable/manual_target)
	if(stat || grabbing || charging)
		return
	if(manual_target)
		target = manual_target
	if(!target)
		return
	grabbing = 1
	grabbing_cooldown = world.time + 125
	stop_automated_movement = TRUE


	var/mob/living/L = target
	L.Paralyze(30)
	animate(target, pixel_z = 20, time = 10, loop = 1)
	visible_message("<span class='boldwarning'>[src] grabs [L] with its' appendages and lifts them up, squeezing them!</span>")
	sleep(15)
	L.apply_damage(20, BRUTE, wound_bonus=WOUND_SLASH)
	playsound(get_turf(L), 'sound/effects/meteorimpact.ogg', 100, 1)
	shake_camera(L, 4, 3)
	shake_camera(src, 2, 3)
	visible_message("<span class='boldwarning'>[src] slams [L] down!</span>")
	var/throwtarget = get_edge_target_turf(target, dir)
	L.throw_at(throwtarget, 4, 3)
	L.pixel_z = 0
	L.apply_damage(20, BRUTE, wound_bonus=CANT_WOUND)

	stop_automated_movement = FALSE
	grabbing = 0

/mob/living/simple_animal/hostile/megafauna/gressil/proc/Charge()
	var/turf/T = get_turf(target)
	if(!T || T == loc)
		return
	charging = TRUE
	visible_message(span_danger(">[src] charges!"))
	DestroySurroundings()
	walk(src, 0)
	setDir(get_dir(src, T))
	var/obj/effect/temp_visual/decoy/D = new /obj/effect/temp_visual/decoy(loc,src)
	animate(D, alpha = 0, color = "#FF0000", transform = matrix()*2, time = 1)
	throw_at(T, get_dist(src, T), 1, src, 0, callback = CALLBACK(src, .proc/charge_end))

/mob/living/simple_animal/hostile/megafauna/gressil/proc/charge_end(list/effects_to_destroy)
	charging = FALSE
	if(target)
		Goto(target, move_to_delay, minimum_distance)

/mob/living/simple_animal/hostile/megafauna/gressil/Bump(atom/A)
	if(charging)
		if(isturf(A) || isobj(A) && A.density)
			A.ex_act(EXPLODE_HEAVY)
		DestroySurroundings()
	..()

/mob/living/simple_animal/hostile/megafauna/gressil/throw_impact(atom/A)
	if(!charging)
		return ..()

	else if(isliving(A))
		var/mob/living/L = A
		L.visible_message(span_danger("[src] slams into [L]!"), span_userdanger("[src] slams into you!"))
		L.apply_damage(melee_damage_lower/2, BRUTE)
		playsound(get_turf(L), 'sound/effects/meteorimpact.ogg', 100, 1)
		shake_camera(L, 4, 3)
		shake_camera(src, 2, 3)
		var/throwtarget = get_edge_target_turf(src, get_dir(src, get_step_away(L, src)))
		L.throw_at(throwtarget, 3)


	charging = FALSE
	charging = FALSE
/*
/mob/living/simple_animal/hostile/megafauna/gressil/bullet_act(obj/item/projectile/Proj)
	if(!Proj)
		return
	if(prob(10))
		if(change_behaviour == TRUE)
			visible_message(span_danger("\The [src] hisses, enraged!"))

			addtimer(CALLBACK(src, .proc/Charge), 3)
	if(prob(85) || Proj.damage > 30)
		return ..()
	else
		visible_message(span_danger("\The [Proj] bounces off \the [src]'s thick skin!"))
		return 0

*/

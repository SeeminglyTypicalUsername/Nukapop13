/datum/language/whiteleg
	name = "White Leg"
	desc = "A savage tongue spoken by the White Leg Tribe."
	key = "w"
	space_chance = 60
	sentence_chance = 8
	default_priority = 90
	var/static/list/base_syllables = list(
		"do", "an", "all", "tee", "ai", "mee", "gree", "boo", "nah", "nie", "yaw",
		"wee", "choo", "teech", "bye", "kah", "kur", "heer", "ah", "sun", "ee", "no", "ni"
	) //the list of syllables we'll combine with itself to get a larger list of syllables
	syllables = list("maiku", "ahm", "naaiyawi", "wichoo", "deyai", "yoo", "can",
					"no", "kumpa", "bai", "thah", "dah", "dems", "mur", "tek",
					"shoah", "ahn", "tsaande", "job", "mabe", "hah", "go", "gaihinnim",
					"ne", "nokihn", "run", "matenka", "look", "eno", "heer", "ning",
					"sum", "hagai", "deyaipe", "devil", "kuna-man", "kale", "watcha", "nei",
					"conserva", "oh", "kuna", "booomb", "baika")

	icon_state = "whiteleg"

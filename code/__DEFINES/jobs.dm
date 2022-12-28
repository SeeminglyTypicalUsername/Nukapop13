//Globa job defines

//Defines Factions
#define FACTION_NCR "NCR"
#define FACTION_LEGION "Legion"
#define FACTION_BROTHERHOOD "BOS"
#define FACTION_OASIS "Town"
#define FACTION_MERCHANT "Merchant"
#define FACTION_CHURCH "Church"
#define FACTION_PITRATS "Pitrats"
#define FACTION_ENCLAVE "Enclave"
#define FACTION_WASTELAND "Wastelander"
#define FACTION_RAIDERS "Raiders"
#define FACTION_TRIBE "Tribe"
#define FACTION_VAULT "Vault"
#define FACTION_FOLLOWERS "Followers"
#define FACTION_SALVATORES "Salvatores"
#define FACTION_MORDINOS "Mordinos"
#define FACTION_BISHOPS "Bishops"
#define FACTION_WRIGHTS "Wrights"
#define FACTION_CITIZENS "Citizens"
#define FACTION_UNDERTOWN "Undertown"
#define FACTION_UNCR "Undertown NCR"
#define FACTION_ULEGION "Undertown Legion"


#define ENGSEC			(1<<0)

#define CAPTAIN			(1<<0)
#define HOS				(1<<1)
#define WARDEN			(1<<2)
#define DETECTIVE		(1<<3)
#define OFFICER			(1<<4)
#define CHIEF			(1<<5)
#define ENGINEER		(1<<6)
#define ATMOSTECH		(1<<7)
#define ROBOTICIST		(1<<8)
#define AI_JF			(1<<9)
#define CYBORG			(1<<10)


#define MEDSCI			(1<<1)

#define RD_JF			(1<<0)
#define SCIENTIST		(1<<1)
#define CHEMIST			(1<<2)
#define CMO_JF			(1<<3)
#define DOCTOR			(1<<4)
#define GENETICIST		(1<<5)
#define VIROLOGIST		(1<<6)
#define PARAMEDIC		(1<<7)


#define CIVILIAN		(1<<2)

#define HOP				(1<<0)
#define BARTENDER		(1<<1)
#define BOTANIST		(1<<2)
#define COOK			(1<<3)
#define JANITOR			(1<<4)
#define CURATOR			(1<<5)
#define QUARTERMASTER	(1<<6)
#define CARGOTECH		(1<<7)
#define MINER			(1<<8)
#define LAWYER			(1<<9)
#define CHAPLAIN		(1<<10)
#define ASSISTANT		(1<<11)

//F13

#define NCR				(1<<3)

#define F13COLONEL		 (1<<0)
#define F13CAPTAIN		 (1<<1)
#define F13LIEUTENANT    (1<<2)
#define F13LOGISTICSOFFICER (1<<3)
#define F13MEDICALOFFICER (1<<4)
#define	F13STAFFSERGEANT (1<<5)
#define F13HEAVYTROOPER	 (1<<6)
#define F13SERGEANT		 (1<<7)
#define F13CORPORAL		 (1<<8)
#define F13COMBATMEDIC	 (1<<9)
#define F13COMBATENGINEER (1<<10)
#define F13TROOPER		 (1<<11)
#define F13CONSCRIPT     (1<<12)
#define F13REARECHELON	 (1<<13)
#define F13NCROFFDUTY    (1<<14)
#define F13VETRANGER	 (1<<15)
#define F13RANGER	 	 (1<<16)
#define F13MP            (1<<17)
#define F13REP           (1<<18)

#define LEGION			(1<<4)

#define F13LEGATE		(1<<0)
#define F13CENTURION	(1<<1)
#define F13FRUMENTARIUS	(1<<2)
#define F13PRIESTESS 	(1<<3)
#define F13DECANVET		(1<<4)
#define F13DECAN		(1<<5)
#define F13DECANREC		(1<<6)
#define F13VEXILLARIUS	(1<<7)
#define F13EXPLORER		(1<<8)
#define F13VENATOR		(1<<9)
#define F13VETLEGIONARY	(1<<10)
#define F13LEGIONARY	(1<<11)
#define F13RECRUITLEG	(1<<12)
#define F13AUXILIA		(1<<13)
#define F13LEGIONSLAVE	(1<<14)
#define F13IMMUNE		(1<<15)
#define F13CAMPFOLLOWER (1<<16)
#define F13SLAVEMASTER	(1<<17)

#define BOS				(1<<5)

#define F13ELDER		(1<<0)
#define F13SENTINEL		(1<<1)
#define F13SENIORPALADIN	(1<<2)
#define F13PALADIN		(1<<3)
#define F13KNIGHTCAPTAIN	(1<<4)
#define F13SENIORKNIGHT	(1<<5)
#define F13KNIGHT		(1<<6)
#define F13HEADSCRIBE	(1<<7)
#define F13SENIORSCRIBE (1<<8)
#define F13SCRIBE		(1<<9)
#define F13INITIATE		(1<<10)
#define F13OFFDUTYBOS	(1<<11)

#define MERCHANT        (1<<6)

#define F13SHOPKEEPER	(1<<0)
#define F13APPRENTICE	(1<<1)
#define F13POLICEMAN	(1<<2)
#define F13PROSPECTOR	(1<<3)

#define CHURCH			(1<<7)

#define F13HIGHPRIEST	(1<<1)
#define F13SERVITORMEDICI	(1<<2)
#define F13SERVITORMILITANT	(1<<3)
#define F13PROSELYTIZER		(1<<4)
#define F13ACOLYTE		(1<<5)
#define F13NEOPHYTE		(1<<6)

#define PITRATS			(1<<8)

#define F13PITMASTER	(1<<1)
#define F13CHAMPION		(1<<2)
#define F13BOOKIE		(1<<3)
#define F13GROGMASTER	(1<<4)
#define F13PITRAT		(1<<5)

#define DEP_OASIS (1<<9)

#define F13MAYOR		(1<<4)
#define F13SECRETARY    (1<<5)
#define F13PREACHER		(1<<6)
#define F13POLICECHIEF	(1<<7)
#define F13FAITHFUL		(1<<8) // WHAT IS BITFLAG. WHAT DOES IT DO. WHERE IS THIS INFO USED.
#define F13TOWNDOCTOR	(1<<9)	// IDK MAN BUT IT SEEMS IMPORTANT
#define F13BARKEEP		(1<<10)
#define F13SETTLER		(1<<11)
#define F13RADIOHOST	(1<<12)

#define VAULT			(1<<10)

#define F13OVERSEER		(1<<0)
#define F13HOS			(1<<1)
#define F13DOCTOR		(1<<2)
#define F13VAULTSCIENTIST	(1<<3)
#define F13OFFICER		(1<<4)
#define F13VAULTENGINEER	(1<<5)
#define F13DWELLER		(1<<6)
#define F13AI			(1<<7)
#define F13CYBORG		(1<<8)

#define WASTELAND		(1<<8)

#define F13MOBBOSS		(1<<0)
#define F13ENFORCER		(1<<1)
#define F13DENDOCTOR    (1<<2)
#define F13WASTELANDER	(1<<2)
#define F13RAIDER		(1<<3)
#define F13PUSHER		(1<<4)
#define F13SERPENTPRIEST		(1<<5)
#define F13PUNRAIDER	(1<<6)
#define F13DETECTIVE	(1<<7)
#define EVENTCOVEN		(1<<8)
#define F13VIGILANTE	(1<<9)
#define F13ADMINBOOS	(1<<10)
#define F13CULTLEADER	(1<<11)
#define F13TRIBAL		(1<<12)

#define ENCLAVE			(1<<11)

#define F13USCPT		(1<<0)
#define F13USLT			(1<<1)
#define F13USGYSGT		(1<<2)
#define F13USSGT		(1<<3)
#define F13USSCIENTIST	(1<<4)
#define F13USSPECIALIST	(1<<5)
#define F13USPRIVATE	(1<<6)
#define F13USBDUTY      (1<<7)
#define F13USAI			(1<<8)

#define TRIBAL			(1<<12)

#define F13CHIEF		(1<<0)
#define F13SHAMAN		(1<<1)
#define F13HHUNTER		(1<<2)
#define F13DRUID		(1<<3)
#define F13VILLAGER		(1<<4)
#define F13HUNTER		(1<<5)
#define F13GUARDIAN		(1<<6)
#define F13SPIRITPLEDGED (1<<7)

#define FOLLOWERS		(1<<13)

#define	F13LEADPRACTITIONER	(1<<0)
#define	F13PRACTITIONER	(1<<1)
#define F13FOLLOWERGUARD	(1<<2)
#define F13FOLLOWERVOLUNTEER	(1<<3)
#define F13PROFESSOR	(1<<4)

#define SALVATORES		(1<<14)

#define F13SALVATRESDON (1<<0)
#define F13SALVATRESUNDERBOSS (1<<1)
#define F13SALVATRESCAPO (1<<2)
#define F13SALVATRESSOLDIER (1<<3)
#define F13SALVATRESBARTENDER (1<<4)
#define F13SALVATRESROBOTICIST (1<<5)

#define MORDINOS		(1<<15)

#define F13MORDINOBOSS (1<<0)
#define F13MORDINOUNDERBOSS (1<<1)
#define F13MORDINOCAPO (1<<2)
#define F13MORDINOGOON (1<<3)
#define F13MORDINOCASINOWORKER (1<<4)
#define F13MORDINOCHEMIST (1<<5)

#define BISHOPS		(1<<16)

#define F13BISHOPSBOSS (1<<0)
#define F13BISHOPSUNDERBOSS (1<<1)
#define F13BISHOPSCAPO (1<<2)
#define F13BISHOPSSOLDIER (1<<3)
#define F13BISHOPCASINOWORKER (1<<4)
#define F13BISHOPCOMEDIAN (1<<5)

#define WRIGHTS		(1<<15)
#define F13WRIGHTSBOSS (1<<0)
#define F13WRIGHTSUNDERBOSS (1<<1)
#define F13WRIGHTSCAPO (1<<2)
#define F13WRIGHTSSOLDIER (1<<3)

#define CITIZENS		(1<<17)

#define F13HOTELOWNER (1<<0)
#define F13HOTELCONCIERGE (1<<1)
#define F13PHARMACIST (1<<2)
#define F13ARMSDEALER (1<<3)
#define F13JUNGLEGYMOWNER (1<<4)
#define F13RENODOCTOR (1<<5)
#define F13BUM (1<<6)
#define F13MERCENARY (1<<7)
#define F13PRIEST (1<<8)
#define F13YAKUZA (1<<9)
#define F13PEASANT (1<<10)
#define F13RENORAIDER (1<<11)
#define F13TOURIST	(1<<12)
#define F13BRAHMINBARON (1<<13)
#define F13AMBASSADOR (1<<14)
#define F13HEADMP (1<<15)
#define F13MILITARYPOLICE (1<<16)

#define JOB_AVAILABLE 0
#define JOB_UNAVAILABLE_GENERIC 1
#define JOB_UNAVAILABLE_BANNED 2
#define JOB_UNAVAILABLE_PLAYTIME 3
#define JOB_UNAVAILABLE_ACCOUNTAGE 4
#define JOB_UNAVAILABLE_SLOTFULL 5
#define JOB_UNAVAILABLE_SPECIESLOCK 6
#define JOB_UNAVAILABLE_WHITELIST 7

#define DEFAULT_RELIGION "Christianity"
#define DEFAULT_DEITY "Space Jesus"

#define JOB_DISPLAY_ORDER_DEFAULT 0

#define JOB_DISPLAY_ORDER_ASSISTANT 1
#define JOB_DISPLAY_ORDER_CAPTAIN 2
#define JOB_DISPLAY_ORDER_HEAD_OF_PERSONNEL 3
#define JOB_DISPLAY_ORDER_QUARTERMASTER 4
#define JOB_DISPLAY_ORDER_CARGO_TECHNICIAN 5
#define JOB_DISPLAY_ORDER_SHAFT_MINER 6
#define JOB_DISPLAY_ORDER_BARTENDER 7
#define JOB_DISPLAY_ORDER_COOK 8
#define JOB_DISPLAY_ORDER_BOTANIST 9
#define JOB_DISPLAY_ORDER_JANITOR 10
#define JOB_DISPLAY_ORDER_CURATOR 13
#define JOB_DISPLAY_ORDER_LAWYER 14
#define JOB_DISPLAY_ORDER_CHAPLAIN 15
//#define JOB_DISPLAY_ORDER_AI 16
//#define JOB_DISPLAY_ORDER_CYBORG 17
#define JOB_DISPLAY_ORDER_CHIEF_ENGINEER 18
#define JOB_DISPLAY_ORDER_STATION_ENGINEER 19
#define JOB_DISPLAY_ORDER_ATMOSPHERIC_TECHNICIAN 20
#define JOB_DISPLAY_ORDER_CHIEF_MEDICAL_OFFICER 21
#define JOB_DISPLAY_ORDER_MEDICAL_DOCTOR 22
#define JOB_DISPLAY_ORDER_PARAMEDIC 23
#define JOB_DISPLAY_ORDER_CHEMIST 24
#define JOB_DISPLAY_ORDER_VIROLOGIST 25
#define JOB_DISPLAY_ORDER_GENETICIST 26
#define JOB_DISPLAY_ORDER_RESEARCH_DIRECTOR 27
#define JOB_DISPLAY_ORDER_SCIENTIST 28
#define JOB_DISPLAY_ORDER_ROBOTICIST 29
#define JOB_DISPLAY_ORDER_HEAD_OF_SECURITY 30
#define JOB_DISPLAY_ORDER_WARDEN 31
//#define JOB_DISPLAY_ORDER_DETECTIVE 32
#define JOB_DISPLAY_ORDER_SECURITY_OFFICER 33

#define JOB_DISPLAY_ORDER_NCR_OFF_DUTY 34
#define JOB_DISPLAY_ORDER_CAPTAIN_NCR 35
#define JOB_DISPLAY_ORDER_LIEUTENANT 36
#define JOB_DISPLAY_ORDER_LOGISTICSOFFICER 37
#define JOB_DISPLAY_ORDER_REPRESENTATIVE 38
#define JOB_DISPLAY_ORDER_MEDICALOFFICER 39
#define JOB_DISPLAY_ORDER_STAFFSERGEANT 40
#define JOB_DISPLAY_ORDER_HEAVYTROOPER 41
#define JOB_DISPLAY_ORDER_DRILLSERGEANT 42
#define JOB_DISPLAY_ORDER_SERGEANT 43
#define JOB_DISPLAY_ORDER_CORPORAL 44
#define JOB_DISPLAY_ORDER_COMBATMEDIC 45
#define JOB_DISPLAY_ORDER_COMBATENGINEER 46
#define JOB_DISPLAY_ORDER_TROOPER 47
#define JOB_DISPLAY_ORDER_CONSCRIPT 48
#define JOB_DISPLAY_ORDER_REAR_ECHELON 49
#define JOB_DISPLAY_ORDER_VETRANGE 50
#define JOB_DISPLAY_ORDER_RANGER 51

#define JOB_DISPLAY_ORDER_CENTURION 52
#define JOB_DISPLAY_ORDER_FRUMENTARIUS 53
#define JOB_DISPLAY_ORDER_PRIESTESS 54
#define JOB_DISPLAY_ORDER_DECANVET 55
#define JOB_DISPLAY_ORDER_DECAN 56
#define JOB_DISPLAY_ORDER_DECANREC 57
#define JOB_DISPLAY_ORDER_VEXILLARIUS 58
#define JOB_DISPLAY_ORDER_EXPLORER 59
#define JOB_DISPLAY_ORDER_VENATOR 60
#define JOB_DISPLAY_ORDER_VETLEGIONARY 61
#define JOB_DISPLAY_ORDER_LEGIONARY 62
#define JOB_DISPLAY_ORDER_RECRUITLEG 63
#define JOB_DISPLAY_ORDER_CAMPFOLLOWER 64
#define JOB_DISPLAY_ORDER_IMMUNE 65
#define JOB_DISPLAY_ORDER_AUXILIA 66
#define JOB_DISPLAY_ORDER_LEGIONSLAVE 67



#define JOB_DISPLAY_ORDER_SENTINEL 68
#define JOB_DISPLAY_ORDER_SENIORPALADIN 69
#define JOB_DISPLAY_ORDER_PALADIN 70
#define JOB_DISPLAY_ORDER_KNIGHTCAPTAIN 71
#define JOB_DISPLAY_ORDER_SENIORKNIGHT 72
#define JOB_DISPLAY_ORDER_KNIGHT 73
#define JOB_DISPLAY_ORDER_HEADSCRIBE 74
#define JOB_DISPLAY_ORDER_SENIORSCRIBE 75
#define JOB_DISPLAY_ORDER_SCRIBE 76
#define JOB_DISPLAY_ORDER_INITIATE 77
#define JOB_DISPLAY_ORDER_OFFDUTYBOS 78

#define JOB_DISPLAY_ORDER_SHOPKEEPER 79
#define JOB_DISPLAY_ORDER_APPRENTICE 80
#define JOB_DISPLAY_ORDER_DEPUTY 81
#define JOB_DISPLAY_ORDER_PROSPECTOR 82
#define JOB_DISPLAY_ORDER_MAYOR 83
#define JOB_DISPLAY_ORDER_PREACHER 84
#define JOB_DISPLAY_ORDER_SHERIFF 85
#define JOB_DISPLAY_ORDER_FAITHFUL 86// WHAT IS BITFLAG. WHAT DOES IT DO. WHERE IS THIS INFO USED.
#define JOB_DISPLAY_ORDER_BANKER 87// IDK MAN BUT IT SEEMS IMPORTANT
#define JOB_DISPLAY_ORDER_BARKEEP 88
#define JOB_DISPLAY_ORDER_HIGHPRIEST 89
#define JOB_DISPLAY_ORDER_SERVITORMEDICI 90
#define JOB_DISPLAY_ORDER_SERVITORMILITANT 91
#define JOB_DISPLAY_ORDER_PROSELYTIZER 92
#define JOB_DISPLAY_ORDER_ACOLYTE 93
#define JOB_DISPLAY_ORDER_FARMER 94
#define JOB_DISPLAY_ORDER_F13PITMASTER 95
#define JOB_DISPLAY_ORDER_F13CHAMPION 96
#define JOB_DISPLAY_ORDER_F13BOOKIE 97
#define JOB_DISPLAY_ORDER_F13GROGMASTER 98
#define JOB_DISPLAY_ORDER_F13PITRAT	99
#define JOB_DISPLAY_ORDER_SETTLER 100
#define JOB_DISPLAY_ORDER_RADIOHOST 101

#define JOB_DISPLAY_ORDER_OVERSEER 102
#define JOB_DISPLAY_ORDER_HOS 103
#define JOB_DISPLAY_ORDER_DOCTOR 104
#define JOB_DISPLAY_ORDER_VAULTSCIENTIST 105
#define JOB_DISPLAY_ORDER_OFFICER 106
#define JOB_DISPLAY_ORDER_VAULTENGINEER 107
#define JOB_DISPLAY_ORDER_DWELLER 108
#define JOB_DISPLAY_ORDER_AI 109
#define JOB_DISPLAY_ORDER_CYBORG 110


#define JOB_DISPLAY_ORDER_CULTLEADER 111
#define JOB_DISPLAY_ORDER_WASTELANDER 112
#define JOB_DISPLAY_ORDER_RAIDER 113
#define JOB_DISPLAY_ORDER_PUSHER 114
#define JOB_DISPLAY_ORDER_F13SERPENTPRIEST 115
#define JOB_DISPLAY_ORDER_PUNRAIDER 116
#define JOB_DISPLAY_ORDER_DETECTIVE 117

#define JOB_DISPLAY_ORDER_F13USLT 118
#define JOB_DISPLAY_ORDER_F13USGYSGT 119
#define JOB_DISPLAY_ORDER_F13USSGT 120
#define JOB_DISPLAY_ORDER_F13USAI 121
#define JOB_DISPLAY_ORDER_F13USSCIENTIST 122
#define JOB_DISPLAY_ORDER_F13USSPECIALIST 123
#define JOB_DISPLAY_ORDER_F13USPRIVATE 124

#define JOB_DISPLAY_ORDER_CHIEF 125
#define JOB_DISPLAY_ORDER_SHAMAN 126
#define JOB_DISPLAY_ORDER_HHUNTER 127
#define JOB_DISPLAY_ORDER_DRUID 128
#define JOB_DISPLAY_ORDER_VILLAGER 129
#define JOB_DISPLAY_ORDER_HUNTER 130
#define JOB_DISPLAY_ORDER_GUARDIAN 131
#define JOB_DISPLAY_ORDER_SPIRITPLEDGED 132


#define	JOB_DISPLAY_ORDER_LEADPRACTITIONER 133
#define	JOB_DISPLAY_ORDER_PRACTITIONER 134
#define JOB_DISPLAY_ORDER_FOLLOWERGUARD 135
#define JOB_DISPLAY_ORDER_FOLLOWERVOLUNTEER 136
#define JOB_DISPLAY_ORDER_PROFESSOR 137

#define JOB_DISPLAY_ORDER_SECRETARY 138

#define JOB_DISPLAY_ORDER_TRIBAL 139

#define JOB_DISPLAY_ORDER_SALVATRESDON 140
#define JOB_DISPLAY_ORDER_F13SALVATRESUNDERBOSS 141
#define JOB_DISPLAY_ORDER_F13SALVATRESCAPO 142
#define JOB_DISPLAY_ORDER_F13SALVATRESSOLDIER 143
#define JOB_DISPLAY_ORDER_F13SALVATRESBARTENDER 144
#define JOB_DISPLAY_ORDER_F13SALVATRESROBOTICIST 145

#define JOB_DISPLAY_ORDER_F13MORDINOBOSS 146
#define JOB_DISPLAY_ORDER_F13MORDINOUNDERBOSS 147
#define JOB_DISPLAY_ORDER_F13MORDINOCAPO 148
#define JOB_DISPLAY_ORDER_F13MORDINOGOON 149
#define JOB_DISPLAY_ORDER_F13MORDINOCASINOWORKER 150
#define JOB_DISPLAY_ORDER_F13MORDINOCHEMIST 151

#define JOB_DISPLAY_ORDER_F13BISHOPSBOSS 152
#define JOB_DISPLAY_ORDER_F13BISHOPSUNDERBOSS 153
#define JOB_DISPLAY_ORDER_F13BISHOPSCAPO 154
#define JOB_DISPLAY_ORDER_F13BISHOPSSOLDIER 155
#define JOB_DISPLAY_ORDER_F13BISHOPCASINOWORKER 156
#define JOB_DISPLAY_ORDER_F13BISHOPCOMEDIAN 157

#define JOB_DISPLAY_ORDER_F13WRIGHTSBOSS 158
#define JOB_DISPLAY_ORDER_F13WRIGHTSUNDERBOSS 159
#define JOB_DISPLAY_ORDER_F13WRIGHTSCAPO 160
#define JOB_DISPLAY_ORDER_F13WRIGHTSSOLDIER 161

#define JOB_DISPLAY_ORDER_F13HOTELOWNER 162
#define JOB_DISPLAY_ORDER_F13HOTELCONCIERGE 163
#define JOB_DISPLAY_ORDER_F13PHARMACIST 164
#define JOB_DISPLAY_ORDER_F13ARMSDEALER 165
#define JOB_DISPLAY_ORDER_F13JUNGLEGYMOWNER 166
#define JOB_DISPLAY_ORDER_F13RENODOCTOR 167
#define JOB_DISPLAY_ORDER_F13BUM 168
#define JOB_DISPLAY_ORDER_F13MERCENARY 169
#define JOB_DISPLAY_ORDER_F13PRIEST 170
#define JOB_DISPLAY_ORDER_F13YAKUZA 171
#define JOB_DISPLAY_ORDER_F13PEASANT 172
#define JOB_DISPLAY_ORDER_F13RENORAIDER 173
#define JOB_DISPLAY_ORDER_F13TOURIST 174
#define JOB_DISPLAY_ORDER_F13BRAHMINBARON 175
#define JOB_DISPLAY_ORDER_F13AMBASSADOR 176
#define JOB_DISPLAY_ORDER_F13HEADMP 177
#define JOB_DISPLAY_ORDER_F13MILITARYPOLICE 178

GLOBAL_LIST_INIT(faction_list, list(FACTION_NCR, FACTION_LEGION, FACTION_OASIS, FACTION_WASTELAND, FACTION_RAIDERS, FACTION_SALVATORES, FACTION_MORDINOS, FACTION_BISHOPS, FACTION_WRIGHTS, FACTION_PITRATS, FACTION_CHURCH, FACTION_MERCHANT))

/obj/structure/soundbox
    name = "Telescreen"
    desc = "A monochrome display reciting dogma at a feverish pace."
    icon = 'icons/obj/radio.dmi'
    icon_state = "telescreen"
    verb_say = "fervently states"
    verb_ask = "states"
    verb_exclaim = "states"
    var/timer
    var/delay = 10

/obj/structure/soundbox/Initialize()
    . = ..()
    timer = delay + rand(0, delay)
    START_PROCESSING(SSobj, src)

/obj/structure/soundbox/process()
    timer--
    if(timer <= 0)
        say(pick(list("Trust in the wisdom of your betters, for they know the mysteries of the universe.","Sacrifice is the mark of devotion.","To give to the Church is to give to the Father. To give to the Father is to give to yourself.", "Unity is coming!", "The Father will return!", "A secret is best kept unspoken.", "The Unbeliever has many eyes and many mouths. Blind them and cut out their tongues.","The Vineyard grows through broken soil.","Those who have nothing to give can give themselves.","Suffering is the path to enlightenment.","There is no master but the Holy Flame.","It is the Unbeliever who creeps upon weakness.","One who is wise must listen to his betters.","All truth is derived from the Church")))
        timer = delay + rand(0, delay)

//Athena Presents The Draconic Empire:tm:
//Stealing shitcode from solgov since 2021
//if there's more than one TODO in this file close the pull request and yell at me in discord

/obj/structure/overmap/nanotrasen/empire //placeholder
	name = "poopenfard light cruiser" //todo find a good name
	desc = "shidden" //oh
	icon = 'nsv13/icons/overmap/nanotrasen/solgov_cruiser.dmi'
	icon_state = "cruiser"
	mass = MASS_LARGE
	sprite_size = 48
	damage_states = FALSE
	bound_width = 96
	bound_height = 96
	obj_integrity = 1000
	max_integrity = 1000
	armor = list("overmap_light" = 90, "overmap_medium" = 50, "overmap_heavy" = 25)

/obj/structure/overmap/nanotrasen/empire/battleship
	name = "Oleen-class battleship"
	desc = "A Draconic Empire ship." //TODO make a better description :)
	icon = 'nsv13/icons/overmap/new/empire/unyielding.dmi' //this uses the Unyielding sprite for now. TODO get off my ass and get an actual sprite without the NT stuff bolten on
	icon_state = "titan"
	mass = MASS_TITAN
	sprite_size = 48
	damage_states = FALSE
	bound_width = 192
	bound_height = 192
	obj_integrity = 2000
	max_integrity = 2000
	integrity_failure = 2000
	armor = list("overmap_light" = 100, "overmap_medium" = 75, "overmap_heavy" = 40)

/obj/structure/overmap/nanotrasen/empire/battleship/starter //the Unyielding
	name = "Halsey-class converted battleship"
	desc = "The Halsey-class battleship is a converted Oleen-class design from the Draconic Empire, with additions made by Nanotrasen after it was loaned off to the Task Force."
	role = MAIN_OVERMAP
	obj_integrity = 2400
	max_integrity = 2400 //She's a big fucking ship with big armor. No energy shields unlike whispy and galactica, so it's gotta have armor to compensate.
	integrity_failure = 2400
	starting_system = "Argo"
	armor = list("overmap_light" = 99, "overmap_medium" = 80 "overmap_heavy" = 35) //Tanky.
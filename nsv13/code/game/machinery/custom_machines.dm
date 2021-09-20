/obj/machinery/telecomms/relay/preset/mining/nostromo
	icon = 'nsv13/icons/obj/cm_ai.dmi' //Credit to CM for this one
	bound_x = 96

/obj/structure/fluff/bleepypanel
	name = "Seegson computational node"
	desc = "A large mainframe panel which processes data at a transfer speed of 1Kb/s through magnetised tape. These mainframes were made all but obsolete by fibre optic technology, but sufficiently old ships still rely heavily on them for signal processing."
	icon = 'nsv13/icons/obj/computers.dmi'
	icon_state = "bleepypanel"
	density = FALSE
	anchored = TRUE
	light_color = LIGHT_COLOR_ORANGE


/obj/structure/fluff/bleepypanel/Initialize()
	. = ..()
	set_light(1)

//Drop trooper space suit storage units.
/obj/machinery/suit_storage_unit/syndicate/odst
	suit_type = /obj/item/clothing/suit/space/syndicate/odst
	mask_type = /obj/item/clothing/mask/gas/syndicate
	helmet_type = /obj/item/clothing/head/helmet/space/syndicate/odst

/obj/machinery/suit_storage_unit/syndicate/odst/marine
	suit_type = /obj/item/clothing/suit/space/syndicate/odst/marine
	helmet_type = /obj/item/clothing/head/helmet/space/syndicate/odst/marine


/obj/machinery/vending/mouse
	name = "Mouse Dispenser"
	desc = "A vending machine which vends mice. ᘛ⁐̤ᕐᐷ"
	icon = 'nsv13/icons/obj/custom_vendors.dmi'
	icon_state = "mousevend"
	product_ads = "Squeak!" //squeak
	vend_reply = "Squeak!"
	light_color = LIGHT_COLOR_BLUE
	products = list(/obj/item/reagent_containers/food/snacks/deadmouse = 24,
					/obj/item/reagent_containers/food/snacks/kebab/rat/double = 6)
	contraband = list(/mob/living/simple_animal/mouse = 2)
	refill_canister = /obj/item/vending_refill/mouse
	payment_department = NO_FREEBIES

/obj/item/vending_refill/mouse
	machine_name = "Mouse Dispenser"

/obj/machinery/vending/mouse/ui_act(action, params)
	. = ..()
	var/I = params["item"]
	if(istype(I, /mob/living/simple_animal/mouse))
		message_admins("[key_name_admin(usr)] has purchased a live rat from [src]")
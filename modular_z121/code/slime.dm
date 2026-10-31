/datum/chemical_reaction/slime/slimemammal
	results = list(/datum/reagent/mutationtoxin/mammal = 1)
	required_reagents = list(/datum/reagent/water = 1)
	// Extract use checks are inherited from /datum/chemical_reaction/slime.
	required_container = /obj/item/slime_extract/green

/datum/reagent/mutationtoxin/mammal
	name = "哺乳类突变毒素"
	description = "一种发光的毒素。"
	color = "#5EFF3B" //RGB: 94, 255, 59
	race = /datum/species/mammal
	taste_description = "毛茸茸的味道"

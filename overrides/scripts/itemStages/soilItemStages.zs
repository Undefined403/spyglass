import mods.itemstages.ItemStages;
import mods.itemstages.Restriction;
import crafttweaker.api.ingredient.IIngredient;
import mods.gamestages.StageHelper;
import crafttweaker.api.item.IItemStack;
//import crafttweaker.api.events.CTEventManager;
//import crafttweaker.api.event.entity.player.MCPlayerLoggedInEvent;

//Soil Stage
	StageHelper.grantStageOnAdvancement("sundial:building/soil", "soil");
	addToStageByArray([
		<item:quark:dirt_bricks>,
		<item:quark:dirt_bricks_stairs>,
		<item:quark:dirt_bricks_slab>,
		<item:quark:dirt_bricks_wall>,
		<item:decorative_blocks:rocky_dirt>,
		<item:minecraft:coarse_dirt>,
		<item:minecraft:mud>,
		<item:minecraft:rooted_dirt>,
		<item:minecraft:podzol>,
		<item:farmersdelight:organic_compost>,
		<item:farmersdelight:rich_soil>
	],"soil");

	//Mud Stage
		StageHelper.grantStageOnAdvancement("sundial:building/soil/mud", "mud");
		addToStageByNameWithExclusions("mud",["mudskipper"],"mud");

	//Sands Stage
		StageHelper.grantStageOnAdvancement("sundial:building/soil/sands","sands");
		addToStageByArray([
			<item:thirst:sand_filter>,
			<item:quark:gravisand>,
			<item:create:red_sand_paper>,
			<item:immersive_weathering:vitrified_sand>,
			<item:createbigcannons:casting_sand>
		],"sands");
		//Sand Stage
			StageHelper.grantStageOnAdvancement("sundial:building/soil/sand","sand");
			addToStageByNameWithExclusions("sandstone",["soul","red","arid"],"sand");
			addToStageByArray([<item:create:sand_paper>,<item:immersive_weathering:sand_layer_block>],"sand");

		//Red Sand Stages
			//CTEventManager.register<MCPlayerLoggedInEvent>((event) => {
			//	if (event.player.hasAnyGameStages("red_sand","red_arid_sand")){
			//		var player = event.player;
			//		player.sendMessage("you win");
			//		//ItemStages.restrict(<item:create:red_sand_paper>,"any_red_sands");
			//	}
			//});
			//Red Sand
				StageHelper.grantStageOnAdvancement("sundial:building/soil/red_sand","red_sand");
				addToStageByName("red_sandstone","red_sand");
				addToStageByArray([
					<item:minecraft:red_sand>,
					<item:immersive_weathering:red_sand_layer_block>,
					<item:create:red_sand_paper>
				],"red_sand");
			//Arid Red Sand
				StageHelper.grantStageOnAdvancement("sundial:building/soil/red_arid_sand","red_arid_sand");
				addToStageByName("red_arid_sandstone","red_arid_sand");
				addToStageByArray([
					<item:atmospheric:red_arid_sand>
				],"red_arid_sand");
			//Arid Sand
				StageHelper.grantStageOnAdvancement("sundial:building/soil/arid_sand","arid_sand");
				addToStageByName("arid_sandstone","arid_sand");
				addToStageByArray([
					<item:atmospheric:arid_sand>
				],"arid_sand");
			//Soul Sand
				StageHelper.grantStageOnAdvancement("sundial:building/soil/soulsand","soulsand");
				addToStageByName("soul_sandstone","soulsand");
				addToStageByArray([
					<item:minecraft:soul_sand>,
					<item:minecraft:soul_soil>,
					<item:minecraft:soul_campfire>,
					<item:minecraft:soul_torch>,
					<item:minecraft:soul_lantern>,
					<item:decorative_blocks:soul_chandelier>,
					<item:decorative_blocks:soul_brazier>,
					<item:dustrial_decor:large_soul_lantern>,
					<item:supplementaries:sconce_soul>,
					<item:supplementaries:candle_holder_soul>,
					<item:buzzier_bees:soul_candle>,
					<item:autumnity:soul_jack_o_lantern>,
					<item:autumnity:large_soul_jack_o_lantern_slice>,
					<item:irons_spellbooks:wayward_compass>,
					<item:nethersdelight:soul_compost>,
					<item:nethersdelight:rich_soul_soil>
				],"soulsand");


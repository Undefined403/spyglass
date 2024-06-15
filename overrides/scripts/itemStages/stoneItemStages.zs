import mods.itemstages.ItemStages;
import mods.itemstages.Restriction;
import crafttweaker.api.ingredient.IIngredient;
import mods.gamestages.StageHelper;
import crafttweaker.api.item.IItemStack;


var stoneTypes = ["granite","diorite","calcite","dripstone","lapis","asurine","crimsite","limestone","ochrum","scoria","scorchia","veridium","obsidian","basalt","concrete","myalite","jasper","shale"];//Myalite,Jasper and shale need advancmentes
createStagesIncludingFilter("sundial:building/stonemasonry/",stoneTypes);

var stoneTypesWithExclusions = ["andesite","tuff","wardstone","ice","snow"];
var exclusions = [["tunnel","funnel","track","casing","door","ladder","bars","scaffolding","catwalk","hull","step","support","pilot","rod","wire","mesh_fence"],["stuff"],["blend"],["rice","rune","juice","spice","slice","notice","cryo","chalice","lattice","upgrade"],["snow_top"]];
createStagesIncludingFilterAndExclusion("sundial:building/stonemasonry/",stoneTypesWithExclusions,exclusions);

//Basic Exeptions - Not caught by filters
	addToStageByName("nebulite","diorite");
	addToStageByArray([<item:architects_palette:wardstone_blend>,<item:storagedrawers:conversion_upgrade>],"lapis");
	addToStageByArray([<item:immersive_weathering:icicle>],"ice");
	addToStageByName("esoterrack","andesite");
	addToStageByArray([<item:bellsandwhistles:polished_andesite_pilot>],"andesite");
	addToStageByName("abyssaline","obsidian");
	addToStageByName("hadaline","obsidian");
	addToStageByArray([<item:create:sturdy_sheet>,<item:storagedrawers:void_upgrade>,<item:irons_spellbooks:scroll_forge>,<item:create_ore_excavation_plus:ultimate_drill>],"obsidian");
	addToStageByNameWithExclusions("cinder",["flour","disc","essence"],"concrete");
	addToStageByName("cerebral","tuff");
	addToStageByArray([<item:architects_palette:framed_oracle_block>],"tuff");

//Clay & terracotta
	StageHelper.grantStageOnAdvancement("sundial:building/soil/clay", "clay");
	addToStageByName("terracotta","clay");
	addToStageByName("craterstone","clay");
	addToStageByName("daub","clay");
	addToStageByNameWithExclusions("shingles",["scute","copper"],"clay");
	addToStageByArray([<item:thirst:clay_bowl>,<item:minecraft:clay>,<item:architects_palette:algal_blend>],"clay");

//Cobblestone
	StageHelper.grantStageOnAdvancement("minecraft:story/mine_stone", "cobblestone");

	addToolsToStage("stone","cobblestone");
	addToStageByName("cobblestone","cobblestone");
	addToStageByName("craterstone","cobblestone");
	addToStageByArray([<item:minecraft:iron_ingot>,<item:minecraft:lever>],"cobblestone");

	var cobbleStoneStageTags = [
		<tag:items:forge:ores_in_ground/stone>
	];
	
	for x in cobbleStoneStageTags{
		var y = ItemStages.restrict(x, "cobblestone");
		y.setHiddenInJEI(true);
		y.preventInventory(false);
		y.preventAttacking(false);
		y.preventPickup(false);
		y.preventUsing(false);
			}


//Stone
	StageHelper.grantStageOnAdvancement("sundial:building/stonemasonry/stone", "stone");

	addToStageByName("mossy_stone","stone");
	addToStageByName("smooth_stone","stone");
	addToStageByName("ore_bricks","stone");
	addToStageByName("coralstone","stone");
	addToStageByName("myonite","stone");
	addToStageByName("olivestone","stone");
	addToStageByName("moonshale","stone");
	addToStageByNameWithExclusions("stone_brick",["black","end","drip","lime","olive","ward","sand","cobble"],"stone");
	addToStageByNameWithExclusions("stone_tile",["black","olive"],"stone");
	addToStageByArray([
		<item:minecraft:stone>,
		<item:minecraft:stone_slab>,
		<item:minecraft:stone_stairs>,
		<item:immersive_weathering:stone_wall>,
		<item:minecraft:stonecutter>,
		<item:minecraft:stone_pressure_plate>,
		<item:decorative_blocks:stone_pillar>,
		<item:architects_palette:stone_nub>,
		<item:minecraft:grindstone>,
		<item:minecraft:stone_button>,
		<item:minecraft:armor_stand>,
		<item:create:schematic_table>,
		<item:immersive_weathering:moss_clump>,
		<item:supplementaries:stone_lamp>,
		<item:supplementaries:pedestal>
		],"stone");


//Deepslate
	StageHelper.grantStageOnAdvancement("tetra:spelunking/root", "deepslate");

	addToStageByName("deepslate","deepslate");

//Nether
	StageHelper.grantStageOnAdvancement("minecraft:nether/root", "nether");

	addToStageByName("nether","nether");
	addToStageByName("sunmetal","nether");
	addToStageByName("wardstone","nether");
	addToStageByName("magma","nether");
	addToStageByName("hadaline","nether");
	addToStageByName("entrails","nether");
	addToStageByName("glowstone","nether");
	addToStageByName("esoterrack","nether");
	addToStageByName("onyx","nether");
	addToStageByName("craterstone","nether");
	addToStageByName("warpstone","nether");
	addToStageByName("nebulite","nether");
	addToStageByName("paper_lantern","nether");
	addToStageByName("_neon_light","nether");
	addToStageByArray([
		<item:minecraft:shroomlight>,
		<item:minecraft:spectral_arrow>,
		<item:minecraft:respawn_anchor>,
		<item:create:cinder_flour>,
		<item:create:steam_engine>,
		<item:create:steam_whistle>,
		<item:quark:soul_bead>,
		<item:storagedrawers:illumination_upgrade>,
        <item:architects_palette:sunstone>,
        <item:architects_palette:moonstone>,
		<item:immersive_weathering:nulch_block>
		],"nether");

//End
	StageHelper.grantStageOnAdvancement("minecraft:end/root", "end");
	addToStageByName("end_stone","end");
	addToStageByName("track_ender","end");
	addToStageByName("chorus","end");

//Bricks
	//Vanilla Bricks
		StageHelper.grantStageOnAdvancement("sundial:building/stonemasonry/bricks","bricks");
		addToStageByArray([
			<item:minecraft:brick>,
			<item:minecraft:bricks>,
			<item:minecraft:brick_stairs>,
			<item:minecraft:brick_slab>,
			<item:minecraft:brick_wall>,
			<item:minecraft:flower_pot>,
			<item:createdeco:pearl_brick>,
			<item:createdeco:dean_brick>,
			<item:createdeco:dusk_brick>,
			<item:createdeco:blue_brick>,
			<item:createdeco:scarlet_brick>,
			<item:createdeco:worn_brick>,
			<item:supplementaries:planter>,
			<item:supplementaries:planter_rich>
		],"bricks");
		addToStageByName("red_bricks","bricks");
		addToStageByName("mossy_red","bricks");
		addToStageByName("cracked_red", "bricks");
		addToStageByName("red_long","bricks");
		addToStageByName("red_short","bricks");
		addToStageByName("red_brick_tiles","bricks");
	//Prismarine Bricks
		StageHelper.grantStageOnAdvancement("sundial:building/stonemasonry/prismarine","prismarine");
		addToStageByName("prismarine","prismarine");
		addToStageByName("abyssaline","prismarine");
		addToStageByName("hadaline","prismarine");
		addToStageByArray([
			<item:minecraft:sponge>,
			<item:minecraft:wet_sponge>,
			<item:minecraft:sea_lantern>,
			<item:alexsmobs:shield_of_the_deep>,
			<item:quark:redstone_randomizer>,
			<item:supplementaries:redstone_illuminator>,
			<item:upgrade_aquatic:guardian_spine>,
			<item:upgrade_aquatic:elder_guardian_spine>,
			<item:upgrade_aquatic:elder_eye>
			],"prismarine");
	//Blackstone Bricks
		StageHelper.grantStageOnAdvancement("sundial:building/stonemasonry/blackstone","blackstone");
		addToStageByName("blackstone","blackstone");
		addToStageByName("checker","blackstone");
	//Ash Bricks
		StageHelper.grantStageOnAdvancement("sundial:building/stonemasonry/ash_bricks","ash_bricks");
		addToStageByNameWithExclusions("ash",["thrasher_tooth"],"ash_bricks");
		addToStageByName("soap","ash_bricks");
	//Create Deco Bricks
	var decoBricks = [
		"pearl",
		"dean",
		"dusk",
		"blue",
		"scarlet",
		"worn"
	];
	for element in decoBricks{
		StageHelper.grantStageOnAdvancement("sundial:building/stonemasonry/"+ element +"_bricks",element +"_bricks");
		addToStageByName(element +"_bricks",element +"_bricks");
		addToStageByName("mossy_"+ element,element +"_bricks");
		addToStageByName("cracked_"+ element,element +"_bricks");
		addToStageByName(element +"_long",element +"_bricks");
		addToStageByName(element +"_short",element +"_bricks");
		addToStageByName(element +"_brick_tiles",element +"_bricks");
	} 
	//Algal
		StageHelper.grantStageOnAdvancement("sundial:building/stonemasonry/algal_bricks","algal_bricks");
		addToStageByNameWithExclusions("algal",["blend"],"algal_bricks");
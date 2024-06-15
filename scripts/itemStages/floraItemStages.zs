import mods.itemstages.ItemStages;
import mods.itemstages.Restriction;
import mods.gamestages.StageHelper;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.events.CTEventManager;
import mods.gamestages.events.GameStageAdded;

//Hidden names
	function registerSeed(item as IIngredient, stage as string) as void {
		ItemStages.restrict(item, stage)
        .setHiddenInJEI(true)
        .preventInventory(false)
        .preventAttacking(false)
        .preventPickup(false)
        .preventUsing(false)
		.hiddenName("Seeds");
}
	val seeds = [
		<item:minecraft:wheat_seeds>,
		<item:minecraft:beetroot_seeds>,
		<item:minecraft:melon_seeds>,
		<item:minecraft:pumpkin_seeds>,
		<item:supplementaries:flax_seeds>,
		<item:farmersdelight:tomato_seeds>,
		<item:farmersdelight:cabbage_seeds>,
		<item:farmersrespite:tea_seeds>,
		<item:createbb:ephedra_seeds>
	];
	val seedStages = [
		"wheat",
		"beetroot",
		"melon",
		"pumpkin",
		"flax",
		"tomato",
		"cabbage",
		"tea_leaves",
		"ephedra"
	];

	for index,s in seeds{
		registerSeed(s,seedStages[index]);
	}

	var flora = [
		"allium",
		"aloe",
		"autumn_crocus",
		"azure_bluet",
		"barrel_cactus",
		"blue_orchid",
		"brown_mushroom",
		"buttercup",
		"cactus",
		"cornflower",
		"crimson_fungi",
		"dandelion",
		"fern",
		"flowering_rush",
		"gilia",
		"glow_lichen",
		"hyacinth",
		"ivy",
		"lilac",
		"lily_of_the_valley",
		"monkey_brush",
		"orange_tulip",
		"oxeye_daisy",
		"peony",
		"pickerelweed",
		"pink_clover",
		"poppy",
		"red_mushroom",
		"red_tulip",
		"rose_bush",
		"sea_pickle",
		"searocket",
		"sunflower",
		"warped_fungi",
		"white_clover",
		"white_tulip",
		"wither_rose"
		];

	createStagesIncludingFilter("sundial:building/flora/", flora);

	addToStageByArray([<item:bushierflowers:grown_lily>],"lily_of_the_valley");

	addToStageByArray([<item:abnormals_delight:dune_platter>],"aloe");

	addToStageByArray([<item:minecraft:fermented_spider_eye>],"brown_mushroom");

	StageHelper.grantStageOnAdvancement("sundial:building/flora/fungi","fungi");
	addToStageByName("myonite","fungi");
	addToStageByArray([<item:minecraft:mycelium>,<item:minecraft:mushroom_stew>,<item:abnormals_delight:perch_with_mushrooms>],"fungi");

	StageHelper.grantStageOnAdvancement("sundial:building/flora/straw","straw");
	addToStageByName("tatami","straw");
	addToStageByName("canvas","straw");
	addToStageByArray([<item:farmersdelight:straw>,<item:farmersdelight:rope>,<item:farmersdelight:straw_bale>,<item:farmersdelight:safety_net>],"straw");

	StageHelper.grantStageOnAdvancement("sundial:building/flora/vine","vine");
	addToStageByNameWithExclusions("vine",["glowing"],"vine");

	addToStageByArray([<item:minecraft:flower_banner_pattern>],"oxeye_daisy");

	var crops = [
		"adzuki",
		"banana",
		"beetroot",
		"cabbage",
		"carrot",
		"chocolate",
		"coffee",
		"glow_berr",
		"kelp",
		"large_pumpkin",
		"melon",
		"mint",
		"mulberry",
		"onion",
		"passion",
		"potato",
		"pumpkin",
		"rice",
		"strawberr",
		"sweet_berr",
		"sugar_cane",
		"tea_leaves",
		"tomato",
		"vanilla",
		"wheat",
		"flax",
		"foul",
		"propelplant"
	];
	StageHelper.grantStageOnAdvancement("minecraft:husbandry/plant_seed","crops");
	addToStageByArray([<item:overweight_farming:vegetable_peels>,<item:overweight_farming:vegetable_compost>,<item:overweight_farming:overweight_apple_block>],"crops");
	createStagesIncludingFilter("sundial:subsistance/", crops);

	addToStageByArray([<item:neapolitan:magic_beans>],"adzuki");
	addToStageByName("frond_thatch","banana");
	addToStageByArray([<item:alexsmobs:sopa_de_macaco>],"banana");
	addToStageByArray([<item:farmersdelight:mixed_salad>,<item:farmersdelight:ratatouille>],"beetroot");
	addToStageByArray([<item:farmersdelight:mixed_salad>],"cabbage");
	addToStageByArray([<item:farmersdelight:vegetable_soup>,<item:farmersdelight:horse_feed>],"carrot");
	addToStageByName("jack_o_lantern","pumpkin");
	addToStageByArray([<item:farmersdelight:fruit_salad>],"pumpkin");
	addToStageByArray([<item:farmersdelight:fruit_salad>],"melon");
	addToStageByArray([<item:farmersdelight:barbecue_stick>],"onion");
	addToStageByNameWithExclusions("tea",["steam","potion","arrow","steak","tear",],"tea_leaves");
	addToStageByName("cocoa","chocolate");
	addToStageByArray([<item:minecraft:cookie>],"chocolate");
	addToStageByArray([<item:farmersrespite:rose_hips>,<item:farmersrespite:rose_hip_pie>],"coffee");
	addToStageByArray([<item:berry_good:glowgurt>,<item:quark:glowberry_sack>],"glow_berr");
	addToStageByArray([<item:farmersdelight:noodle_soup>,<item:architects_palette:algal_blend>],"kelp");
	addToStageByArray([<item:quark:berry_sack>],"sweet_berr");
    addToStageByName("oracle","sugar_cane");
    addToStageByName("cardboard","sugar_cane");
	addToStageByNameWithExclusions("sugar",["sugar_cane"],"sugar_cane");
	addToStageByArray([
		<item:quark:sugar_cane_block>,
		<item:minecraft:cake>,
		<item:minecraft:cartography_table>,
		<item:farmersdelight:apple_pie>,
		<item:farmersdelight:apple_cider>,
		<item:farmersrespite:rose_hip_pie>,
		<item:createaddition:cake_base>,
		<item:createaddition:cake_base_baked>,
		<item:immersive_paintings:painting>,
		<item:immersive_paintings:glow_painting>,
		<item:supplementaries:present>,
		<item:supplementaries:trapped_present>,
		<item:supplementaries:notice_board>,
		<item:supplementaries:candy>,
		<item:supplementaries:pancake>
		],"sugar_cane");
	addToStageByArray([<item:farmersdelight:barbecue_stick>],"tomato");
	addToStageByName("bread","wheat");
	addToStageByArray([
		<item:minecraft:cookie>,
		<item:minecraft:hay_block>,
		<item:create:dough>,
		<item:minecraft:cake>,
		<item:create:sweet_roll>,
		<item:farmersdelight:egg_sandwich>,
		<item:farmersdelight:raw_pasta>,
		<item:farmersdelight:apple_pie>,
		<item:farmersdelight:dumplings>,
		<item:farmersdelight:noodle_soup>,
		<item:farmersdelight:pasta_with_meatballs>,
		<item:farmersdelight:vegetable_noodles>,
		<item:farmersdelight:hamburger>,
		<item:farmersdelight:pie_crust>,
		<item:farmersdelight:horse_feed>,
		<item:createaddition:cake_base>,
		<item:createaddition:cake_base_baked>,
		<item:supplementaries:pancake>,
		<item:incubation:hay_nest>,
		<item:dummmmmmy:target_dummy>,
		<item:quark:thatch>,
		<item:quark:thatch_slab>,
		<item:quark:thatch_stairs>,
		<item:quark:feeding_trough>
		],"wheat");
	addToStageByName("daub","flax");
	addToStageByName("sack","flax");
	addToStageByArray([<item:supplementaries:fodder>,<item:supplementaries:sack>,<item:supplementaries:rope>,<item:supplementaries:doormat>],"flax");
	addToStageByArray([<item:nethersdelight:propelpearl>],"propelplant");



//Dyes
    var dyes = ["magenta","light_blue","light_gray"];
    var dyesWithExclusions = [
    	"white",
    	"black",
    	"orange",
    	"yellow",
    	"lime",
    	"pink",
    	"gray",
    	"cyan",
    	"purple",
    	"blue",
    	"brown",
    	"green",
    	"red"
    	];
    var exclusions = [
    	["tulip","strawberr","clover","searocket","phosphorus","meth","tray","corundum"],
    	["stone","tea","fish","cod","board","corundum"],
    	["tulip","corundum"],
    	["tea","mushroom"],
    	["slime","stone"],
    	["clover","searocket","salmon"],
    	["light","egg"],
    	["egg","cyanide"],
    	["pickerelweed"],
    	["light","brick","corundum","pickerelweed","bomb","gill","egg","meth","ice","orchid","azure","print"],
    	["trout","mushroom"],
    	["tea","corundum","train","egg"],
    	["brick","charred","phosphorus","shrooma","grouper","stone","bored","carver","disc","egg","corundum","tea","ring","griefer","warrior","bronze","layered","carbon","hawk","mushroom","gyrodyne","powdered","cage","bone","osseous","moonshale","prepared","key","cooldown","coffee","oak","downgrade","train","tulip","rail","latch","enchant"]
    	];

    	createStagesIncludingFilterAndExclusion("",dyesWithExclusions,exclusions);
    	createStagesIncludingFilter("",dyes);
		addToStageByArray([<item:dustrial_decor:rainbow_neon_light>],"magenta");
		addToStageByArray([
			<item:createdeco:blue_brick>,
			<item:create:empty_schematic>,
			<item:create:schematic_and_quill>
			],"light_blue");
		addToStageByArray([<item:createdeco:pearl_brick>],"light_gray");
		addToStageByArray([<item:supplementaries:blackboard>,<item:dustrial_decor:rainbow_neon_light>],"white");
		addToStageByArray([
			<item:createdeco:dusk_brick>,
			<item:architects_palette:hazard_block>,
			<item:architects_palette:hazard_slab>,
			<item:architects_palette:hazard_wall>],"black");
		addToStageByArray([<item:dustrial_decor:rainbow_neon_light>],"orange");
		addToStageByArray([
			<item:createdeco:dean_brick>,
			<item:architects_palette:hazard_block>,
			<item:architects_palette:hazard_slab>,
			<item:architects_palette:hazard_wall>,
			<item:dustrial_decor:rainbow_neon_light>],"yellow");
		addToStageByArray([<item:revampedcats:yarn>],"pink");
		addToStageByArray([<item:dustrial_decor:blue_neon_light>,<item:dustrial_decor:rainbow_neon_light>],"blue");
		addToStageByName("olivestone","green");
		addToStageByArray([<item:dustrial_decor:rainbow_neon_light>],"green");
		addToStageByArray([<item:createdeco:dean_brick>,<item:dustrial_decor:rainbow_neon_light>],"red");

//Linking Colours and plants
	CTEventManager.register<GameStageAdded>((event) => {
	    if (event.player.hasAnyGameStages("blue","red","white","mulberry","pink","allium","purple","lilac","autumn_crocus") && !event.player.hasGameStage("magenta")) {
			event.player.addGameStage("magenta");
	    }
	});

	CTEventManager.register<GameStageAdded>((event) => {
	    if (event.player.hasAnyGameStages("blue","white","blue_orchid") && !event.player.hasGameStage("light_blue")) {
			event.player.addGameStage("light_blue");
	    }
	});

	CTEventManager.register<GameStageAdded>((event) => {
	    if (event.player.hasAnyGameStages("black","white","blue_orchid","white_tulip","hyacinth","azure_bluet") && !event.player.hasGameStage("light_gray")) {
			event.player.addGameStage("light_gray");
	    }
	});

	CTEventManager.register<GameStageAdded>((event) => {
	    if (event.player.hasAnyGameStages("bone","searocket","lily_of_the_valley","white_clover") && !event.player.hasGameStage("white")) {
			event.player.addGameStage("white");
	    }
	});

	CTEventManager.register<GameStageAdded>((event) => {
	    if (event.player.hasAnyGameStages("ink","wither_rose") && !event.player.hasGameStage("black")) {
			event.player.addGameStage("black");
	    }
	});

	CTEventManager.register<GameStageAdded>((event) => {
	    if (event.player.hasAnyGameStages("monkey_brush","orange_tulip","barrel_cactus","yellow","red") && !event.player.hasGameStage("orange")) {
			event.player.addGameStage("orange");
	    }
	});

	CTEventManager.register<GameStageAdded>((event) => {
	    if (event.player.hasAnyGameStages("dandelion","monkey_brush","sunflower","buttercup") && !event.player.hasGameStage("yellow")) {
			event.player.addGameStage("yellow");
	    }
	});

	CTEventManager.register<GameStageAdded>((event) => {
	    if (event.player.hasAnyGameStages("white","green","yucca","vanilla") && !event.player.hasGameStage("lime")) {
			event.player.addGameStage("lime");
	    }
	});

	CTEventManager.register<GameStageAdded>((event) => {
	    if (event.player.hasAnyGameStages("pink_tulip","searocket","pink_clover","flowering_rush","white","red","peony") && !event.player.hasGameStage("pink")) {
			event.player.addGameStage("pink");
	    }
	});

	CTEventManager.register<GameStageAdded>((event) => {
	    if (event.player.hasAnyGameStages("white","black") && !event.player.hasGameStage("gray")) {
			event.player.addGameStage("gray");
	    }
	});

	CTEventManager.register<GameStageAdded>((event) => {
	    if (event.player.hasAnyGameStages("blue","green","pickerelweed") && !event.player.hasGameStage("cyan")) {
			event.player.addGameStage("cyan");
	    }
	});

	CTEventManager.register<GameStageAdded>((event) => {
	    if (event.player.hasAnyGameStages("gilia","red","blue","pickerelweed","hyacinth") && !event.player.hasGameStage("purple")) {
			event.player.addGameStage("purple");
	    }
	});

	CTEventManager.register<GameStageAdded>((event) => {
	    if (event.player.hasAnyGameStages("cornflower","lapis") && !event.player.hasGameStage("blue")) {
			event.player.addGameStage("blue");
	    }
	});

	CTEventManager.register<GameStageAdded>((event) => {
	    if (event.player.hasAnyGameStages("chocolate") && !event.player.hasGameStage("brown")) {
			event.player.addGameStage("brown");
	    }
	});

	CTEventManager.register<GameStageAdded>((event) => {
	    if (event.player.hasAnyGameStages("stone","cactus","fern","rose_bush") && !event.player.hasGameStage("green")) {
			event.player.addGameStage("green");
	    }
	});

	CTEventManager.register<GameStageAdded>((event) => {
	    if (event.player.hasAnyGameStages("poppy","beetroot","rose_bush","monkey_brush","red_tulip","coffee") && !event.player.hasGameStage("red")) {
			event.player.addGameStage("red");
	    }
	});
//Druggssssssssssssssssssssssssssssssss
	StageHelper.grantStageOnAdvancement("createbb:createbb","ephedra");

	ItemStages.createModRestriction("createbb", (item) => ("brass" in item.definition.registryName.path), "ephedra")
			.setHiddenInJEI(true)
			.preventInventory(false)
			.preventAttacking(false)
			.preventPickup(false)
			.preventUsing(false);
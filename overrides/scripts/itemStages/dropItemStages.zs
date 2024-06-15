import mods.itemstages.ItemStages;
import mods.itemstages.Restriction;
import mods.gamestages.StageHelper;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.events.CTEventManager;
import mods.gamestages.events.GameStageAdded;

//Drops
    var drops = [
		"leather",
		"rabbit",
		"pork",
		"mutton",
		"beef",
		"gunpowder",
		"nautilus_shell",
		"string",
		"membrane",
		"wool",
		"glow_ink",
		"wax",
		"chicken",
		"ghast_tear",
		"ender_pearl",
		"roadrunner",
		"bone_serpent",
		"gazelle",
		"crocodile",
		"maggot",
		"banana_slug",
		"mosquito",
		"rattlesnake",
		"shark_tooth",
		"serrated_shark_tooth",
		"lobster_tail",
		"komodo",
		"centipede",
		"moose",
		"raccoon",
		"cockroach",
		"soul_heart",
		"spiked",
		"straddl",
		"emu",
		"dropbear",
		"kangaroo",
		"whale_tooth",
		"enderiophage",
		"tarantula_hawk",
		"froststalker",
		"guster",
		"snake_skin",
		"rocky_roller",
		"rainbow_jelly",
		"bison",
		"lost_tentacle",
		"farseer",
		"bunfungus",
		"dragonfly",
		"snail",
		"turkey",
		"arcane_essence",
		"creeper_spores",
		"hoglin",
		"strider",
		"terrapin",
		"crab",
		"turtle_egg"];
    var dropsWithExclusions = [
		"slime",
		"ink",
		"bone",
		"scute",
		"wither",
		"bear",
		"silk"
    	];
    var exclusions = [
		["banana","bunny"],
		["link","sprinkler","pink","antique","common","uncommon","rare","epic","legendary","glow"],
		["wither","fish","serpent_tooth"],
		["crocodile","spiked"],
		["bonemeal"],
		["bearing","dropbear"],
		["coral"]
	];
    createStagesIncludingFilterAndExclusion("sundial:subsistance/",dropsWithExclusions,exclusions);
    createStagesIncludingFilter("sundial:subsistance/",drops);

	addToStageByArray([
		<item:minecraft:item_frame>,
		<item:minecraft:glow_item_frame>,
		<item:minecraft:bookshelf>,
		<item:minecraft:book>,
		<item:minecraft:writable_book>,
		<item:minecraft:bundle>,
		<item:minecraft:lectern>,
		<item:toughasnails:empty_canteen>,
		<item:sophisticatedbackpacks:backpack>,
		<item:sophisticatedbackpacks:upgrade_base>,
		<item:farmersrespite:kettle>,
		<item:solcarrot:food_book>,
		<item:irons_spellbooks:inscription_table>,
		<item:irons_spellbooks:iron_spell_book>,
		<item:map_atlases:atlas>,
		<item:quark:seed_pouch>
],"leather");
	addToStageByArray([<item:supplementaries:slingshot>],"rabbit");
	addToStageByName("bacon","pork");
	addToStageByNameWithExclusions("ham",["chamber","burger","_methamphetamine_bucket"],"pork");
	addToStageByArray([<item:immersive_weathering:tallow>],"pork");
	addToStageByArray([<item:farmersdelight:shepherds_pie_block>],"mutton");
	addToStageByArray([<item:minecraft:cooked_beef>,<item:farmersrespite:blazing_chili>,<item:farmersdelight:hamburger>,<item:farmersdelight:pasta_with_meatballs>],"beef");
	addToStageByArray([<item:minecraft:firework_rocket>,<item:minecraft:firework_star>,<item:minecraft:tnt>,<item:createbigcannons:cannon_mount>,<item:immersive_paintings:graffiti>,<item:immersive_paintings:glow_graffiti>,<item:supplementaries:bomb>],"gunpowder");
	addToStageByArray([<item:minecraft:conduit>],"nautilus_shell");
	addToStageByName("mesh_fence","string");
	addToStageByArray([<item:minecraft:fermented_spider_eye>,<item:minecraft:spider_eye>,<item:minecraft:fishing_rod>,<item:tetra:modular_toolbelt>,<item:revampedcats:yarn>,<item:quark:seed_pouch>],"string");
	addToStageByName("gloomy_tile","membrane");
	addToStageByNameWithExclusions("bed",["barbed","rock"],"wool");
	addToStageByName("sleeping","wool");
	addToStageByName("padded","wool");
	addToStageByNameWithExclusions("carpet",["moss","bison_fur"],"wool");
	addToStageByNameWithExclusions("flag",["moonshale"],"wool");
	addToStageByNameWithExclusions("banner",["banner_pattern"],"wool");
	addToStageByArray([<item:minecraft:painting>,<item:create:crafting_blueprint>,<item:create:nozzle>,<item:architects_palette:spool>],"wool");
	addToStageByArray([<item:minecraft:glow_item_frame>,<item:immersive_paintings:glow_painting>,<item:immersive_paintings:glow_graffiti>],"glow_ink");
	addToStageByName("candle","wax");
	addToStageByArray([
		<item:minecraft:egg>,
		<item:minecraft:arrow>,
		<item:minecraft:feather>,
		<item:farmersdelight:egg_sandwich>,
		<item:farmersdelight:fried_egg>,
		<item:patchouli:guide_book>.withTag({"patchouli:book": "parcool:parcool_guide"}),
		<item:supplementaries:rope_arrow>,
		<item:incubation:scrambled_eggs>,
		<item:quark:torch_arrow>
		],"chicken");
	addToStageByName("entwine","ender_pearl");
	addToStageByArray([<item:minecraft:ender_eye>,<item:chunkloaders:basic_chunk_loader>,<item:chunkloaders:single_chunk_loader>,<item:chunkloaders:advanced_chunk_loader>],"ender_pearl");
	addToStageByArray([<item:alexsmobs:falconry_hood>],"roadrunner");
	addToStageByArray([<item:minecraft:turtle_helmet>],"scute");
	addToStageByArray([<item:alexsmobs:blood_sac>,<item:alexsmobs:blood_sprayer>],"mosquito");
	addToStageByArray([<item:alexsmobs:maraca>,<item:alexsmobs:poison_bottle>],"rattlesnake");
	addToStageByArray([<item:alexsmobs:shield_of_the_deep>],"shark_tooth");
	addToStageByArray([<item:alexsmobs:shield_of_the_deep>],"serrated_shark_tooth");
	addToStageByArray([<item:alexsdelight:lobster_pasta>],"lobster_tail");
	addToStageByArray([<item:alexsmobs:frontier_cap>],"raccoon");
	addToStageByArray([<item:alexsmobs:tendon_whip>],"dropbear");
	addToStageByArray([<item:alexsmobs:echolocator>,<item:alexsmobs:endolocator>,<item:alexsmobs:pupfish_locator>],"whale_tooth");
	addToStageByArray([<item:alexsmobs:cosmic_cod>,<item:alexsmobs:capsid>],"enderiophage");
	addToStageByArray([<item:alexsmobs:pocket_sand>,<item:alexsmobs:gustmaker>],"guster");
	addToStageByArray([<item:alexsmobs:vine_lasso>],"snake_skin");
	addToStageByArray([<item:alexsmobs:rocky_shell>,<item:alexsmobs:rocky_chestplate>],"rocky_roller");
	addToStageByArray([<item:alexsmobs:squid_grapple>],"lost_tentacle");
	addToStageByArray([<item:alexsmobs:transmutation_table>],"farseer");
	addToStageByArray([<item:abnormals_delight:escargot>],"snail");
    ItemStages.createModRestriction("irons_spellbooks",  (item) => (("elixir" in item.definition.registryName.path) || ("ink" in item.definition.registryName.path) || ("spell_book" in item.definition.registryName.path)), "arcane_essence")
		.setHiddenInJEI(true)
		.preventInventory(false)
		.preventAttacking(false)
		.preventPickup(false)
		.preventUsing(false)
		.preventEquipment(false);
	addToStageByArray([<item:create_wizardry:arcane_casing>,<item:irons_spellbooks:druidic_spell_book>,<item:patchouli:guide_book>.withTag({"patchouli:book": "irons_spellbooks:iss_guide_book"})],"arcane_essence");
	addToStageByName("blast_proof","creeper_spores");
	addToStageByName("griefer","creeper_spores");
	addToStageByArray([<item:savage_and_ravage:mischief_arrow>,<item:savage_and_ravage:spore_bomb>,<item:savage_and_ravage:creeper_spore_sack>],"creeper_spores");
	addToStageByName("sticky","slime");
	addToStageByArray([<item:create:sticker>,<item:minecraft:lead>,<item:create:super_glue>,<item:supplementaries:slingshot>],"slime");
	addToStageByName("osseous","bone");
	addToStageByArray([<item:alexsmobs:sopa_de_macaco>,<item:create:tree_fertilizer>,<item:farmersdelight:dog_food>,<item:immersive_weathering:mulch_block>],"bone");
	addToStageByArray([<item:alexsmobs:falconry_glove>],"bear");
	addToStageByArray([<item:crittersandcompanions:grappling_hook>],"silk");


	//Fish
		var fish = ["pufferfish","thrasher","tropical_fish","flying_fish","skelewag","blobfish","catfish","perch","lionfish"];//
		var fishWithExclusions = [
			"salmon",
			"cod",
			"pike"];
		var fishExclusions = [
			["pink"],
			["crocodile","cosmic","atlantic"],
			["spike"]
		];
    createStagesIncludingFilter("sundial:subsistance/fish/",fish);
    createStagesIncludingFilterAndExclusion("sundial:subsistance/fish/",fishWithExclusions, fishExclusions);

	addToStageByName("tooth_brick","thrasher");
	addToStageByArray([
		<item:upgrade_aquatic:tooth_block>,
		<item:upgrade_aquatic:tooth_tiles>,
		<item:upgrade_aquatic:tooth_stairs>,
		<item:upgrade_aquatic:tooth_slab>,
		<item:upgrade_aquatic:tooth_wall>,
		<item:upgrade_aquatic:tooth_lantern>,
		<item:upgrade_aquatic:tooth_trapdoor>,
		<item:upgrade_aquatic:tooth_door>
		],"thrasher");
	addToStageByArray([<item:alexsmobs:fish_bones>,<item:alexsmobs:pupfish_locator>],"skelewag");
	addToStageByArray([<item:alexsmobs:fish_oil>,<item:alexsdelight:gongylidia_bruschetta>],"blobfish");

    StageHelper.grantStageOnAdvancement("sundial:subsistance/fish", "fish");
		addToStageByArray([<item:farmersdelight:fish_stew>],"fish");



	


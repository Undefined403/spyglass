import mods.itemstages.ItemStages;
import mods.itemstages.Restriction;
import crafttweaker.api.ingredient.IIngredient;
import mods.gamestages.StageHelper;
import crafttweaker.api.item.IItemStack;


//var stoneTypes = ["andesite","granite","diorite","calcite","dripstone","lapis"];
//createStagesIncludingFilter("sundial:building/stonemasonry/",stoneTypes);
//
//var stoneTypesWithExclusions = ["tuff","wardstone"];
//var exclusions = [["stuff"],["blend"]];
//createStagesIncludingFilterAndExclusion("sundial:building/stonemasonry/",stoneTypesWithExclusions,exclusions);

StageHelper.grantStageOnAdvancement("minecraft:adventure/avoid_vibration","sculk");
	addToStageByNameWithExclusions("sculk",["roots"],"sculk");
	addToStageByArray([<item:minecraft:recovery_compass>,<item:minecraft:echo_shard>,<item:quark:echorang>],"sculk");

StageHelper.grantStageOnAdvancement("sundial:nether/ender_eye","ender_eye");
	addToStageByArray([
		<item:minecraft:end_crystal>,
		<item:minecraft:ender_chest>,
		<item:quark:ender_watcher>,
		<item:architects_palette:nub_of_ender>,
		<item:minecraft:dragon_breath>,
		<item:createoreexcavation:vein_finder>],"ender_eye");

StageHelper.grantStageOnAdvancement("minecraft:end/kill_dragon","kill_dragon");
	addToStageByArray([
		<item:tetra:dragon_sinew>,
		<item:irons_spellbooks:dragonskin>,
		<item:irons_spellbooks:dragonskin_spell_book>,
		<item:art_of_forging:dragon_soul>
		],"kill_dragon");

StageHelper.grantStageOnAdvancement("minecraft:end/find_end_city","purpur");
	addToStageByName("purpur","purpur");
	addToStageByName("shulker","purpur");
    addToStageByName("duskbound","purpur");
	addToStageByArray([<item:minecraft:end_rod>,<item:minecraft:elytra>,<item:alexsmobs:tarantula_hawk_elytra>],"purpur");

StageHelper.grantStageOnAdvancement("minecraft:nether/brew_potion","potions");
	addToStageByName("potion","potions");
	addToStageByName("tipped_arrow","potions");
	addToStageByName("elixir","potions");

StageHelper.grantStageOnAdvancement("minecraft:nether/obtain_blaze_rod","blaze");
	addToStageByName("blaze","blaze");
	addToStageByName("robe","blaze");
	addToStageByName("biomass","blaze");
	addToStageByArray([
		<item:minecraft:fire_charge>,
		<item:farmersrespite:blazing_chili>,
		<item:minecraft:ender_eye>,
		<item:minecraft:brewing_stand>,
		<item:chunkloaders:advanced_chunk_loader>,
		<item:chunkloaders:ultimate_chunk_loader>],"blaze");

StageHelper.grantStageOnAdvancement("minecraft:nether/summon_wither","nether_star");
	addToStageByArray([
		<item:minecraft:nether_star>,
		<item:minecraft:beacon>,
		<item:sophisticatedbackpacks:everlasting_upgrade>,
		<item:sophisticatedbackpacks:inception_upgrade>,
		<item:alexsmobs:transmutation_table>
		],"nether_star");

StageHelper.grantStageOnAdvancement("minecraft:husbandry/safely_harvest_honey","bees");
	addToStageByName("honey","bees");
	addToStageByArray([<item:minecraft:beehive>,<item:buzzier_bees:glazed_porkchop>],"bees");

//Check complete, all stages work
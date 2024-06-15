import mods.itemstages.ItemStages;
import mods.itemstages.Restriction;
import crafttweaker.api.ingredient.IIngredient;
import mods.gamestages.StageHelper;
import crafttweaker.api.item.IItemStack;

public function addToStageByName(filter as string, stage as string) as void {
    ItemStages.restrict((item) => (filter in item.definition.registryName.path), stage)
        .setHiddenInJEI(true)
        .preventInventory(false)
        .preventAttacking(false)
        .preventPickup(false)
        .preventUsing(false)
		.preventEquipment(false);
}

public function addToStageByNameWithExclusions(filter as string, exclusion as string[], stage as string) as void {
    ItemStages.restrict((item) => { if ( filter in item.definition.registryName.path ) { for ex in exclusion { if ( ex in item.definition.registryName.path ) { return false; }} return true; } return false; }, stage)
        .setHiddenInJEI(true)
        .preventInventory(false)
        .preventAttacking(false)
        .preventPickup(false)
        .preventUsing(false)
		.preventEquipment(false);
}

public function addToStageByArray(array as IItemStack[], stage as string) as void {
	<tagmanager:items>.tag("sundial:" + stage + "_stage").add(array);

	ItemStages.restrict(<tagmanager:items>.tag("sundial:" + stage + "_stage"), stage)
		.setHiddenInJEI(true)
		.preventInventory(false)
		.preventAttacking(false)
		.preventPickup(false)
		.preventUsing(false)
		.preventEquipment(false);
	}

public function addToolsToStage(material as string, stage as string) as void {
	var tools = [material + "_sword", material + "_pickaxe", material + "_axe", material + "_shovel", material + "_hoe"];
	for m in loadedMods.getMods(){
		for t in tools{
			ItemStages.createModRestriction(m.id(), (item) => !(t in item.definition.registryName.path), stage)
				.setHiddenInJEI(true)
				.preventInventory(false)
				.preventAttacking(false)
				.preventPickup(false)
				.preventUsing(false)
				.preventEquipment(false);
		}
	}
}

//Creating a stage and adding all items that include the name of the stage to that stage. Useful for small stages
public function createStagesIncludingFilter(directory as string, stageName as string[]) as void {
	for stage in stageName{
		StageHelper.grantStageOnAdvancement(directory + stage,stage);

		addToStageByName(stage,stage);
	}
}
//Same as above, but with an 2D array parameter of items to exclude from each stage. Useful for small stages that are slightly more complex
public function createStagesIncludingFilterAndExclusion(directory as string, stageName as string[], exclusions as string[][]) as void {
	for index,stage in stageName{
		StageHelper.grantStageOnAdvancement(directory + stage,stage);

		addToStageByNameWithExclusions(stage,exclusions[index],stage);
	}
}

//Root Stage - The stage you have at the very start of the game.
	StageHelper.grantStageOnAdvancement("minecraft:adventure/root", "root");
	addToStageByArray([
		<item:minecraft:dirt>,
		<item:decorative_blocks:rocky_dirt>,
		<item:minecraft:grass_block>,
		<item:minecraft:sand>,
		<item:minecraft:gravel>,
		<item:minecraft:crafting_table>,
		<item:minecraft:sugar_cane>,
		<item:minecraft:clay_ball>,
		<item:minecraft:bone>,
		<item:minecraft:bone_meal>,
		<item:minecraft:bone_block>,
		<item:minecraft:furnace>,
		<item:minecraft:smoker>,
		<item:minecraft:apple>,
		<item:quark:apple_crate>,
		<item:minecraft:flint>,
		<item:minecraft:rotten_flesh>,
		<item:architects_palette:rotten_flesh_block>,
		<item:jrftl:prepared_flesh>,
		<item:alexsmobs:animal_dictionary>,
		<item:toughasnails:apple_juice>
	],"root");
	addToolsToStage("wooden","root");

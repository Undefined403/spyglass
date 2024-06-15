import mods.itemstages.ItemStages;
import mods.itemstages.Restriction;
import mods.gamestages.StageHelper;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.ItemStack;

StageHelper.grantStageOnAdvancement("sundial:building/woodwork","wood");
	addToStageByArray([<item:minecraft:chest>,
	<item:minecraft:stick>,
	<item:quark:stick_block>,
	<item:minecraft:barrel>,
	<item:minecraft:campfire>,
	<item:minecraft:soul_campfire>,
	<item:minecraft:charcoal>,
	<item:minecraft:torch>,
	<item:quark:torch_arrow>,
	<item:decorative_blocks:chandelier>,
	<item:architects_palette:charcoal_block>,
	<item:minecraft:bowl>,
	<item:minecraft:composter>,
	<item:minecraft:bow>,
	<item:minecraft:loom>,
	<item:minecraft:fletching_table>,
	<item:minecraft:paper>,
	<item:tetra:basic_workbench>,
	<item:farmersdelight:cutting_board>,
	<item:storagedrawers:iron_storage_upgrade>,
	<item:storagedrawers:one_stack_upgrade>,
	<item:storagedrawers:void_upgrade>,
	<item:storagedrawers:conversion_upgrade>,
	<item:storagedrawers:illumination_upgrade>,
	<item:storagedrawers:fill_level_upgrade>,
	<item:storagedrawers:upgrade_template>,
	<item:decorative_blocks:lattice>,
	<item:supplementaries:timber_frame>,
	<item:supplementaries:timber_brace>,
	<item:supplementaries:timber_cross_brace>,
	<item:supplementaries:flower_box>,
	<item:irons_spellbooks:inscription_table>

],"wood");

var woodTypes = ["dark_oak","spruce","birch","jungle","acacia","mangrove","azalea","yucca","morado","rosewood","aspen","maple","river","driftwood","twisted","blossom","bamboo"];
var woodTypesWithExclusions = ["oak","crimson","warped","ancient"];
var exclusions = [["dark","skin"],["mosquito"],["mixture","muscle"],["tome","codex","hog","debris","dart","plating","bush","berries","bag","seed"]];

createStagesIncludingFilter("sundial:building/woodwork/",woodTypes);

createStagesIncludingFilterAndExclusion("sundial:building/woodwork/",woodTypesWithExclusions,exclusions);

//Extras not caught by the filters
	addToStageByArray([<item:minecraft:ladder>,<item:minecraft:bookshelf>,<item:supplementaries:item_shelf>],"oak");
	addToStageByArray([<item:minecraft:twisting_vines>,<item:architects_palette:twisting_blackstone>],"warped");
	addToStageByArray([<item:minecraft:weeping_vines>,<item:architects_palette:weeping_blackstone>,<item:architects_palette:weeping_blackstone_bricks>],"crimson");
	addToStageByName("paper_wall","bamboo");
	addToStageByArray([<item:minecraft:scaffolding>,<item:farmersdelight:basket>,<item:quark:paper_lantern>,<item:supplementaries:flute>,<item:createaddition:straw>],"bamboo");
	addToStageByName("midori","azalea");
	addToStageByArray([<item:minecraft:moss_block>,<item:minecraft:moss_carpet>,<item:minecraft:big_dripleaf>,<item:minecraft:small_dripleaf>,<item:immersive_weathering:flower_crown>,<item:quark:moss_paste>],"azalea");
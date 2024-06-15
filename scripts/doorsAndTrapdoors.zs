import crafttweaker.api.item.IItemStack;
import crafttweaker.api.recipe.MirrorAxis;

function addBasicDoorRecipe(name as string, raw as IItemStack, door as IItemStack, quantity as int)as void{
    craftingTable.remove(door);
    craftingTable.addShapedMirrored(name + "_door",MirrorAxis.HORIZONTAL,door * quantity,
        [[raw,raw,<item:minecraft:iron_nugget>],
         [raw,raw,<item:minecraft:air>],
         [raw,raw,<item:minecraft:iron_nugget>]]);
}

function addBasicTrapdoorRecipe(name as string, raw as IItemStack, door as IItemStack, quantity as int)as void{
    craftingTable.remove(door);
    craftingTable.addShapedMirrored(name + "_trapdoor",MirrorAxis.HORIZONTAL,door * quantity,
        [[raw,raw,<item:minecraft:iron_nugget>],
         [raw,raw,<item:minecraft:iron_nugget>]]);
}

var names as string[] = [
    "oak",
    "spruce",
    "birch",
    "jungle",
    "acacia",
    "dark_oak",
    "mangrove",
    "crimson",
    "warped",
    "twisted",
    "rosewood",
    "morado",
    "yucca",
    "kousa",
    "aspen",
    "grimwood",
    "maple",
    "honeycomb",
    "driftwood",
    "river",
    "tooth",
    "ancient",
    "azalea",
    "bamboo",
    "glass",
    "iron",
    "sheet_iron",
    "silver",
    "gold"
    ];

var materials = [
    //Wooden
    <item:minecraft:oak_planks>,
    <item:minecraft:spruce_planks>,
    <item:minecraft:birch_planks>,
    <item:minecraft:jungle_planks>,
    <item:minecraft:acacia_planks>,
    <item:minecraft:dark_oak_planks>,
    <item:minecraft:mangrove_planks>,
    <item:minecraft:crimson_planks>,
    <item:minecraft:warped_planks>,
    <item:architects_palette:twisted_planks>,
    <item:atmospheric:rosewood_planks>,
    <item:atmospheric:morado_planks>,
    <item:atmospheric:yucca_planks>,
    <item:atmospheric:kousa_planks>,
    <item:atmospheric:aspen_planks>,
    <item:atmospheric:grimwood_planks>,
    <item:autumnity:maple_planks>,
    <item:minecraft:honeycomb>,
    <item:upgrade_aquatic:driftwood_planks>,
    <item:upgrade_aquatic:river_planks>,
    <item:upgrade_aquatic:thrasher_tooth>,
    <item:quark:ancient_planks>,
    <item:quark:azalea_planks>,
    <item:quark:bamboo_planks>,
    <item:minecraft:glass_pane>,
    //Metals
    <item:minecraft:iron_ingot>,
    <item:create:iron_sheet>,
    <item:wandering_bags:silver_ingot>,
    <item:create:golden_sheet>];

var doors = [
    //Wooden
    <item:minecraft:oak_door>,
    <item:minecraft:spruce_door>,
    <item:minecraft:birch_door>,
    <item:minecraft:jungle_door>,
    <item:minecraft:acacia_door>,
    <item:minecraft:dark_oak_door>,
    <item:minecraft:mangrove_door>,
    <item:minecraft:crimson_door>,
    <item:minecraft:warped_door>,
    <item:architects_palette:twisted_door>,
    <item:atmospheric:rosewood_door>,
    <item:atmospheric:morado_door>,
    <item:atmospheric:yucca_door>,
    <item:atmospheric:kousa_door>,
    <item:atmospheric:aspen_door>,
    <item:atmospheric:grimwood_door>,
    <item:autumnity:maple_door>,
    <item:buzzier_bees:honeycomb_door>,
    <item:upgrade_aquatic:driftwood_door>,
    <item:upgrade_aquatic:river_door>,
    <item:upgrade_aquatic:tooth_door>,
    <item:quark:ancient_door>,
    <item:quark:azalea_door>,
    <item:quark:bamboo_door>,
    <item:create:framed_glass_door>,
    //Metals
    <item:minecraft:iron_door>,
    <item:dustrial_decor:sheet_metal_door>,   
    <item:supplementaries:silver_door>, 
    <item:supplementaries:gold_door>];

var trapDoors = [
    //Wooden
    <item:minecraft:oak_trapdoor>,
    <item:minecraft:spruce_trapdoor>,
    <item:minecraft:birch_trapdoor>,
    <item:minecraft:jungle_trapdoor>,
    <item:minecraft:acacia_trapdoor>,
    <item:minecraft:dark_oak_trapdoor>,
    <item:minecraft:mangrove_trapdoor>,
    <item:minecraft:crimson_trapdoor>,
    <item:minecraft:warped_trapdoor>,
    <item:architects_palette:twisted_trapdoor>,
    <item:atmospheric:rosewood_trapdoor>,
    <item:atmospheric:morado_trapdoor>,
    <item:atmospheric:yucca_trapdoor>,
    <item:atmospheric:kousa_trapdoor>,
    <item:atmospheric:aspen_trapdoor>,
    <item:atmospheric:grimwood_trapdoor>,
    <item:autumnity:maple_trapdoor>,
    <item:buzzier_bees:honeycomb_trapdoor>,
    <item:upgrade_aquatic:driftwood_trapdoor>,
    <item:upgrade_aquatic:river_trapdoor>,
    <item:upgrade_aquatic:tooth_trapdoor>,
    <item:quark:ancient_trapdoor>,
    <item:quark:azalea_trapdoor>,
    <item:quark:bamboo_trapdoor>,
    <item:create:framed_glass_trapdoor>,
    //Metals
    <item:minecraft:iron_trapdoor>,
    <item:dustrial_decor:sheet_metal_trapdoor>,
    <item:supplementaries:silver_trapdoor>,
    <item:supplementaries:gold_trapdoor>];

var quantity as int[] = [
    3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3
];


for index,name in names{
    craftingTable.remove(doors[index]);
    addBasicDoorRecipe(name,materials[index],doors[index],quantity[index]);
    addBasicTrapdoorRecipe(name,materials[index],trapDoors[index],quantity[index]);
}



//        //Unconventional Doors
//
                craftingTable.addShapedMirrored("iron_bar_door", MirrorAxis.HORIZONTAL, <item:dustrial_decor:iron_bar_door>, 
                            [[<item:createaddition:iron_rod>, <item:create:iron_sheet>, <item:minecraft:iron_nugget>],
                            [<item:createaddition:iron_rod>, <item:createaddition:iron_rod>, <item:minecraft:air>],
                            [<item:createaddition:iron_rod>, <item:create:iron_sheet>, <item:minecraft:iron_nugget>]]);

                craftingTable.addShapedMirrored("iron_bar_trapdoor", MirrorAxis.HORIZONTAL, <item:dustrial_decor:iron_bar_trapdoor>, 
                            [[<item:createaddition:iron_rod>, <item:create:iron_sheet>, <item:minecraft:iron_nugget>],
                            [<item:createaddition:iron_rod>, <item:create:iron_sheet>, <item:minecraft:iron_nugget>]]);

                craftingTable.addShapedMirrored("iron_chain_door", MirrorAxis.HORIZONTAL, <item:dustrial_decor:chain_door> * 2, 
                            [[<item:dustrial_decor:chain_link_fence>, <item:create:iron_sheet>, <item:minecraft:iron_nugget>],
                            [<item:dustrial_decor:chain_link_fence>, <item:dustrial_decor:chain_link_fence>, <item:minecraft:air>],
                            [<item:dustrial_decor:chain_link_fence>, <item:create:iron_sheet>, <item:minecraft:iron_nugget>]]);

                craftingTable.addShapedMirrored("iron_chain_trapdoor", MirrorAxis.HORIZONTAL, <item:dustrial_decor:chain_trapdoor> * 2, 
                            [[<item:dustrial_decor:chain_link_fence>, <item:create:iron_sheet>, <item:minecraft:iron_nugget>],
                            [<item:dustrial_decor:chain_link_fence>, <item:create:iron_sheet>, <item:minecraft:iron_nugget>]]);

                craftingTable.addShapedMirrored("cast_iron_door", MirrorAxis.HORIZONTAL, <item:createdeco:cast_iron_door> * 2, 
                            [[<item:sundialres:cast_iron_rod>, <item:createdeco:cast_iron_sheet>, <item:minecraft:iron_nugget>],
                            [<item:sundialres:cast_iron_rod>, <item:sundialres:cast_iron_rod>, <item:minecraft:air>],
                            [<item:sundialres:cast_iron_rod>, <item:createdeco:cast_iron_sheet>, <item:minecraft:iron_nugget>]]);

                craftingTable.addShapedMirrored("cast_iron_trapdoor", MirrorAxis.HORIZONTAL, <item:createdeco:cast_iron_trapdoor> * 2, 
                            [[<item:createdeco:cast_iron_sheet>, <item:createdeco:cast_iron_sheet>, <item:minecraft:iron_nugget>],
                            [<item:createdeco:cast_iron_sheet>, <item:createdeco:cast_iron_sheet>, <item:minecraft:iron_nugget>]]);

                craftingTable.addShapedMirrored("steel_door", MirrorAxis.HORIZONTAL, <item:alloyed:steel_door> * 2, 
                            [[<item:alloyed:steel_sheet>, <item:alloyed:steel_sheet>, <item:minecraft:iron_nugget>],
                            [<item:alloyed:steel_sheet>,<item:alloyed:steel_sheet>,<item:minecraft:air>],
                            [<item:alloyed:steel_sheet>, <item:alloyed:steel_sheet>, <item:minecraft:iron_nugget>]]);

                craftingTable.addShapedMirrored("steel_trapdoor", MirrorAxis.HORIZONTAL, <item:alloyed:steel_trapdoor> * 2, 
                            [[<item:sundialres:steel_rod>, <item:alloyed:steel_sheet>, <item:minecraft:iron_nugget>],
                            [<item:sundialres:steel_rod>, <item:alloyed:steel_sheet>, <item:minecraft:iron_nugget>]]);

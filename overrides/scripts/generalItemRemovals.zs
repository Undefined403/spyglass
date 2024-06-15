import mods.jeitweaker.Jei;
import mods.create.MechanicalCrafterManager;
import mods.create.CompactingManager;

var completeRemovals = [
                    //Drinks
                        <item:farmersdelight:melon_juice>,
                        <item:overweight_farming:melon_juice>,
                    //Unused Minerals
                        <item:createbigcannons:cast_iron_ingot>,
                        <item:createbigcannons:cast_iron_nugget>,
                        <item:dustrial_decor:rusty_iron_ingot>,
                        <item:dustrial_decor:rusty_iron_nugget>,
                        <item:dustrial_decor:sheet_metal>,
                        <item:dustrial_decor:rusty_sheet_metal>,
                        <item:dustrial_decor:cast_iron_billet>,
                        <item:createaddition:zinc_sheet>,
                        <item:quark:charcoal_block>,
                    //Jetpacks
                        <item:create_sa:brass_jetpack_chestplate>,
                        <item:create_sa:copper_jetpack_chestplate>,
                        <item:create_sa:andesite_jetpack_chestplate>,
                    //TAN
                        <item:toughasnails:wool_helmet>,
                        <item:toughasnails:wool_chestplate>,
                        <item:toughasnails:wool_leggings>,
                        <item:toughasnails:wool_boots>,

                        <item:toughasnails:leaf_helmet>,
                        <item:toughasnails:leaf_chestplate>,
                        <item:toughasnails:leaf_leggings>,
                        <item:toughasnails:leaf_boots>,
                    //Doors
                        <item:dustrial_decor:rusty_iron_door>,
                        <item:dustrial_decor:rusty_iron_trapdoor>,
                        <item:minecraft:reinforced_deepslate>,
                    //Misc
                        <item:minecraft:petrified_oak_slab>,
                        <item:minecraft:infested_deepslate>,
                        <item:quark:stone_lamp>,
                        <item:create:schematicannon>,
                        <item:create_things_and_misc:cherry_sail>,
                        <item:incubation:fried_egg>,
                        <item:bellsandwhistles:station_platform>,
                        <item:supplementaries:flint_block>,
                        <item:supplementaries:cog_block>,
                        <item:supplementaries:feather_block>,
                        <item:supplementaries:crank>,
                        <item:supplementaries:turn_table>,
                        <item:supplementaries:pulley_block>,
                        <item:create_things_and_misc:brass_speaker>,
                        <item:supplementaries:bellows>,
                        <item:supplementaries:crystal_display>,
                        <item:supplementaries:faucet>,
                        <item:abnormals_delight:laurel_cabinet>,
                        <item:autumnity:pancake>,
                        <item:bellsandwhistles:metal_pilot>,
                        <item:quark:sturdy_stone>,
                        <item:quark:dragon_scale>,
                    //Leaf Piles
                        <item:autumnity:maple_leaf_pile>,
                        <item:autumnity:yellow_maple_leaf_pile>,
                        <item:autumnity:orange_maple_leaf_pile>,
                        <item:autumnity:red_maple_leaf_pile>,
                    //Kobolds
                        <item:kobolds:kobold_iron_sword>,
                        <item:kobolds:kobold_iron_shovel>,
                        <item:kobolds:kobold_iron_pickaxe>,
                        <item:kobolds:kobold_iron_hoe>,
                        <item:kobolds:kobold_iron_axe>,
                        <item:kobolds:kobold_template>,
                    //Spelunking Bags
                        <item:spelunking_bags:sharp_iron_pickaxe>,
                        <item:spelunking_bags:sharp_diamond_pickaxe>,
                        <item:spelunking_bags:sharp_netherite_pickaxe>,
                    //Wandering Bags
                        <item:wandering_bags:hammer_from_farlands>,
                    //Quark Limestone
                        <item:quark:limestone>,
                        <item:quark:limestone_slab>,
                        <item:quark:limestone_stairs>,
                        <item:quark:polished_limestone_slab>,
                        <item:quark:polished_limestone_stairs>,
                        <item:quark:limestone_bricks>,
                        <item:quark:limestone_bricks_slab>,
                        <item:quark:limestone_bricks_stairs>,
                        <item:quark:chiseled_limestone_bricks>,
                        <item:quark:limestone_pillar>,
                        <item:quark:limestone_wall>,
                        <item:quark:limestone_bricks_wall>,
                    //Architects Palette
                        <item:architects_palette:ender_pearl_block>,
                    //Immersive Weathering
                        <item:immersive_weathering:mossy_bricks>,
                        <item:immersive_weathering:mossy_brick_stairs>,
                        <item:immersive_weathering:mossy_brick_slab>,
                        <item:immersive_weathering:mossy_brick_wall>,
                        <item:immersive_weathering:cracked_bricks>,
                        <item:immersive_weathering:cracked_brick_stairs>,
                        <item:immersive_weathering:cracked_brick_slab>,
                        <item:immersive_weathering:cracked_brick_wall>,
                    //Metro Casing
                        <item:bellsandwhistles:metro_casing>,
                        <item:bellsandwhistles:corrugated_metro_casing>,
                        <item:bellsandwhistles:metro_panel>,
                        <item:bellsandwhistles:corrugated_metro_panel>,
                        <item:bellsandwhistles:metro_window>,
                        <item:bellsandwhistles:metro_trapdoor>,
                    //Farmers Delight
                        <item:farmersdelight:tree_bark>,
                    //Bedrolls
                        <item:upgrade_aquatic:bedroll>,
                        <item:upgrade_aquatic:white_bedroll>,
                        <item:upgrade_aquatic:black_bedroll>,
                        <item:upgrade_aquatic:orange_bedroll>,
                        <item:upgrade_aquatic:yellow_bedroll>,
                        <item:upgrade_aquatic:lime_bedroll>,
                        <item:upgrade_aquatic:pink_bedroll>,
                        <item:upgrade_aquatic:gray_bedroll>,
                        <item:upgrade_aquatic:cyan_bedroll>,
                        <item:upgrade_aquatic:purple_bedroll>,
                        <item:upgrade_aquatic:blue_bedroll>,
                        <item:upgrade_aquatic:brown_bedroll>,
                        <item:upgrade_aquatic:green_bedroll>,
                        <item:upgrade_aquatic:red_bedroll>,
                    //Create addons
                        <item:createaddition:digital_adapter>,
                        <item:create_things_and_misc:neon_tube>,
                        <item:create_things_and_misc:speed_25>,
                        <item:create_things_and_misc:speed_50>,
                        <item:create_things_and_misc:speed_75>,
                        <item:create_things_and_misc:speed_100>,
                        <item:create_things_and_misc:andesite_casing_trapdoor>,
                        <item:create_things_and_misc:copper_casing_trapdoor>
                        ];
for x in completeRemovals{
    Jei.hideIngredient(x);
    craftingTable.remove(x);
    stoneCutter.remove(x);
    <recipetype:create:compacting>.remove(x);
    <recipetype:create:mechanical_crafting>.remove(x);
}

var jeiRemovals = [
    //Grasses
        <item:minecraft:grass>,
        <item:minecraft:seagrass>,
        <item:minecraft:tall_grass>,
        <item:minecraft:hanging_roots>,
        <item:immersive_weathering:frosty_grass>,
        <item:upgrade_aquatic:beachgrass>,
        <item:upgrade_aquatic:tall_beachgrass>,
    //Mob Heads
        <item:minecraft:skeleton_skull>,
        <item:minecraft:wither_skeleton_skull>,
        <item:minecraft:zombie_head>,
        <item:minecraft:creeper_head>,
        <item:minecraft:dragon_head>,
        <item:kobolds:kobold_skull>,
    //Damaged anvils
        <item:minecraft:chipped_anvil>,
        <item:minecraft:damaged_anvil>
];
var fluidJeiRemovals = [
    <fluid:create:chocolate>,
    <fluid:create:honey>,
    <fluid:create:potion>,
    <fluid:create:tea>,
    <fluid:create_central_kitchen:long_apple_cider>,
    <fluid:create_central_kitchen:long_black_tea>,
    <fluid:create_central_kitchen:long_coffee>,
    <fluid:create_central_kitchen:long_dandelion_tea>,
    <fluid:create_central_kitchen:long_gamblers_tea>,
    <fluid:create_central_kitchen:long_green_tea>,
    <fluid:create_central_kitchen:long_purulent_tea>,
    <fluid:create_central_kitchen:long_rose_hip_tea>,
    <fluid:create_central_kitchen:long_yellow_tea>,
    <fluid:create_central_kitchen:sap>,
    <fluid:create_central_kitchen:strong_apple_cider>,
    <fluid:create_central_kitchen:strong_black_tea>,
    <fluid:create_central_kitchen:strong_coffee>,
    <fluid:create_central_kitchen:strong_gamblers_tea>,
    <fluid:create_central_kitchen:strong_green_tea>,
    <fluid:create_central_kitchen:strong_hot_cocoa>,
    <fluid:create_central_kitchen:strong_melon_juice>,
    <fluid:create_central_kitchen:strong_purulent_tea>,
    <fluid:create_central_kitchen:strong_rose_hip_tea>,
    <fluid:create_central_kitchen:strong_yellow_tea>,
    <fluid:create_central_kitchen:syrup>,
    <fluid:create_central_kitchen:tomato_sauce>,
    <fluid:create_enchantment_industry:ink>,
    <fluid:create_things_and_misc:diluted_bonemeal>,
    <fluid:create_things_and_misc:slime>,
    <fluid:createaddition:bioethanol>,
    <fluid:createaddition:seed_oil>,
    <fluid:createbb:acetic_anhydride>,
    <fluid:createbb:ammonia>,
    <fluid:createbb:hydrogen>,
    <fluid:createbb:liquid_blue_methamphetamine>,
    <fluid:createbb:liquid_methamphetamine>,
    <fluid:createbb:methanol>,
    <fluid:createbb:methylamine>,
    <fluid:createbb:oxygen>,
    <fluid:createbb:phenylacetic_acid>,
    <fluid:createbb:phenylacetone>,
    <fluid:createbigcannons:molten_bronze>,
    <fluid:createbigcannons:molten_cast_iron>,
    <fluid:createbigcannons:molten_nethersteel>,
    <fluid:createbigcannons:molten_steel>,
    <fluid:create_enchantment_industry:experience>,
    <fluid:create_enchantment_industry:hyper_experience>,
    <fluid:decorative_blocks:thatch>,
    <fluid:minecraft:lava>,
    <fluid:minecraft:milk>,
    <fluid:minecraft:water>,
    <fluid:sophisticatedcore:xp_still>
];
for x in jeiRemovals{
    Jei.hideIngredient(x);
}
for x in fluidJeiRemovals{
    Jei.hideIngredient(x);
}


    Jei.hideModIngredients("tetra", path => path == "basic_workbench"|| path == "rack"|| path == "modular_toolbelt"|| path =="dragon_sinew");

//Regex Removals
    val regexRemovals = [
        //Immersive Weathering
            "immersive_weathering:sandy_.*",
            "immersive_weathering:snowy_.*",

        //Remove Scrolls & Enchanted Books
            "minecraft:enchanted_book",
            "irons_spellbooks:scroll",
            "quark:ancient_tome",
        //Remove quark generated vert slabs
            ".*:.*_vertical_slab",
            ".*:.*_slab_vert",

        //Remove Leaf Carpets
            ".*:.*_leaf_carpet",

        //Remove Vanilla stuff
            ".*:.*spawn_egg.*",
            "minecraft:infested_.*",
            "minecraft:bedrock",
            "minecraft:dirt_path",
            ":.*farmland",
        
        //Remove Creative Stuff
            ".*creative_.*",
            "create:handheld_worldshaper",
            "dragonmounts:dragon_egg",

        //Remove Discs
            ".*disc.*",
            ".*ten_m_.*",

        //Coral
            ".*coral.*",

        //Spelunking Bags
            "wandering_bags:*.",

        //Remove Unobtainable
            //Kelp
                "upgrade_aquatic:.*_kelp.*",
            //Jelly Torch
                "upgrade_aquatic:.*jelly_torch.*",
            //Travertine
                "atmospheric:.*travertine.*",
        //Upgrades
            "sophisticatedbackpacks:.*upgrade",
            "sophisticatedbackpacks:stack_upgrade.*",
        //Structure Gel
            "structure_gel:.*gel"

            
    ];
    for x in regexRemovals{
        Jei.hideIngredientsByRegex(x);
    }
    craftingTable.removeByName("architects_palette:ender_pearl_from_block");
    craftingTable.removeByName("dustrial_decor:sheet_metal_siding");
    craftingTable.removeByName("dustrial_decor:sheet_metal_walling");
    craftingTable.removeByName("quark:building/crafting/rusty_iron_plate");
    craftingTable.removeByName("architects_palette:plating_block");
    craftingTable.removeByName("dustrial_decor:sheet_metal_treading");
    craftingTable.removeByName("farmersdelight:organic_compost_from_tree_bark");
    craftingTable.removeByName("overweight_farming:apply_fullmetal_directly_to_compost");

//Hide by Mod
    //THT
        Jei.hideModIngredients("tht", path => false);



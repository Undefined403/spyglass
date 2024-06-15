import crafttweaker.api.recipe.MirrorAxis;
//Mud Cracking
    <recipetype:minecraft:campfire_cooking>.remove(<item:immersive_weathering:cracked_mud>);
    campfire.addRecipe("mud_cracking",<item:immersive_weathering:cracked_mud>, <item:minecraft:mud>, 0.2, 100);

//sopa_de_macaco
    craftingTable.remove(<item:alexsmobs:sopa_de_macaco>);
    craftingTable.addShapeless("sopa_de_macaco",<item:alexsmobs:sopa_de_macaco>,[
        <item:minecraft:bowl>,
        <tag:items:alexsmobs:bananas>,
        <item:minecraft:brown_mushroom>,
        <item:minecraft:bone>]);

//Tree bark
    craftingTable.addShapeless("organic_compost_from_bark",<item:farmersdelight:organic_compost>,[
        <tag:items:immersive_weathering:bark>,
        <tag:items:immersive_weathering:bark>,
        <tag:items:immersive_weathering:bark>,
        <tag:items:immersive_weathering:bark>,
        <item:minecraft:dirt>,
        <item:farmersdelight:straw>,
        <item:farmersdelight:straw>,
        <item:minecraft:bone_meal>,
        <item:minecraft:bone_meal>

    ]);

    craftingTable.addShapeless("organic_compost_from_vegetable_compost",<item:farmersdelight:organic_compost>,[
        <tag:items:immersive_weathering:bark>,
        <tag:items:immersive_weathering:bark>,
        <item:minecraft:dirt>,
        <item:farmersdelight:straw>,
        <item:minecraft:bone_meal>,
        <item:overweight_farming:vegetable_compost>
    ]);

//Safety net
    craftingTable.remove(<item:farmersdelight:safety_net>);
    craftingTable.addShapedMirrored("safety_net",MirrorAxis.ALL,<item:farmersdelight:safety_net>,[
        [<tag:items:forge:rope>,<tag:items:forge:rope>,<item:minecraft:air>],
        [<tag:items:forge:rope>,<tag:items:forge:rope>,<item:minecraft:air>]]);

//Animal Dictionary
    craftingTable.remove(<item:alexsmobs:animal_dictionary>);
    craftingTable.addShapeless("animal_dictionary",<item:alexsmobs:animal_dictionary>,[
        <tag:items:alexsmobs:animal_dictionary_ingredient>,
        <item:minecraft:green_dye>,
        <tag:items:alexsmobs:animal_dictionary_ingredient>,
        <tag:items:alexsmobs:animal_dictionary_ingredient>,
        <item:minecraft:book>,
        <tag:items:alexsmobs:animal_dictionary_ingredient>,
        <tag:items:alexsmobs:animal_dictionary_ingredient>,
        <tag:items:alexsmobs:animal_dictionary_ingredient>,
        <tag:items:alexsmobs:animal_dictionary_ingredient>
    ]);

//Supplementaries Present
    craftingTable.remove(<item:supplementaries:present>);
    craftingTable.addShapedMirrored("present",MirrorAxis.ALL,<item:supplementaries:present>,[
        [<item:minecraft:air>,<item:dustrial_decor:cardboard>,<item:minecraft:air>],
        [<item:dustrial_decor:cardboard>,<item:minecraft:air>,<item:dustrial_decor:cardboard>],
        [<item:minecraft:air>,<item:dustrial_decor:cardboard>,<item:minecraft:air>]]);

//Supplementaries speaker_block
    craftingTable.remove(<item:supplementaries:speaker_block>);
    craftingTable.addShaped("speaker_block",<item:supplementaries:speaker_block>,[
        [<tag:items:minecraft:planks>,<tag:items:minecraft:planks>,<tag:items:minecraft:planks>],
        [<item:create:filter>,<item:create_things_and_misc:vibration_mechanism>,<item:create:filter>],
        [<tag:items:minecraft:planks>,<tag:items:minecraft:planks>,<tag:items:minecraft:planks>]]);

//Copper Wrench
    craftingTable.remove(<item:supplementaries:wrench>);
    craftingTable.addShapedMirrored("wrench",MirrorAxis.HORIZONTAL,<item:supplementaries:wrench>,[
        [<item:minecraft:air>,<item:create:copper_sheet>,<item:minecraft:air>],
        [<item:minecraft:air>,<item:createaddition:copper_rod>,<item:create:copper_sheet>],
        [<item:create:copper_nugget>,<item:minecraft:air>,<item:minecraft:air>]]);

//Firefly Jar
    craftingTable.remove(<item:irons_spellbooks:firefly_jar>);
    craftingTable.addShapeless("firefly_jar_from_jar",<item:irons_spellbooks:firefly_jar>,
        [<item:supplementaries:jar>,<item:minecraft:lantern>]);

    craftingTable.addShaped("firefly_jar",<item:irons_spellbooks:firefly_jar>,[
        [<tag:items:forge:glass>,<tag:items:minecraft:wooden_slabs>,<tag:items:forge:glass>],
        [<tag:items:forge:glass>,<item:minecraft:lantern>,<tag:items:forge:glass>],
        [<tag:items:forge:glass>,<tag:items:forge:glass>,<tag:items:forge:glass>]]);
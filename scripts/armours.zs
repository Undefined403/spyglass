import crafttweaker.api.item.IItemStack;
import crafttweaker.api.recipe.MirrorAxis;

//Basic Structure
    function addArmourSetRecipes(name as string, raw as IItemStack, helmet as IItemStack, chestplate as IItemStack, leggings as IItemStack, boots as IItemStack) as void{

        craftingTable.addShaped(name + "_helmet", helmet,[
            [raw,raw,                 raw],
            [raw,<item:minecraft:air>,raw]]);

        craftingTable.addShaped(name + "_chestplate", chestplate,[
            [raw,<item:minecraft:air>,raw],
            [raw,raw                 ,raw],
            [raw,raw                 ,raw]]);

        craftingTable.addShaped(name + "_leggings", leggings,[
            [raw,raw,                 raw],
            [raw,<item:minecraft:air>,raw],
            [raw,<item:minecraft:air>,raw]]);

        craftingTable.addShaped(name + "_boots", boots,[
            [raw,<item:minecraft:air>,raw],
            [raw,<item:minecraft:air>,raw]]);
    }

    //Additions - Chainmail, Iron, Gold, Netherite, Steel, Brass, Zinc, Copper
    //Non conforming additions - Warrior, Devine, Steampunk

    var names = ["chain","iron","gold","netherite","steel","brass","zinc","copper","wither"];
    var materials = [<item:createaddition:iron_wire>,<item:create:iron_sheet>,<item:create:golden_sheet>,<item:createdeco:netherite_sheet>,<item:alloyed:steel_sheet>,<item:create:brass_sheet>,<item:createdeco:zinc_sheet>,<item:create:copper_sheet>,<item:architects_palette:withered_bone>];
    var helmets = [<item:minecraft:chainmail_helmet>,<item:minecraft:iron_helmet>,<item:minecraft:golden_helmet>,<item:minecraft:netherite_helmet>,<item:alloyed:steel_helmet>,<item:create_sa:brass_helmet>,<item:create_sa:zinc_helmet>,<item:create_sa:copper_helmet>,<item:immersive_armors:wither_helmet>];
    var chestplates = [<item:minecraft:chainmail_chestplate>,<item:minecraft:iron_chestplate>,<item:minecraft:golden_chestplate>,<item:minecraft:netherite_chestplate> ,<item:alloyed:steel_chestplate>,<item:create_sa:brass_chestplate>,<item:create_sa:zinc_chestplate>,<item:create_sa:copper_chestplate>,<item:immersive_armors:wither_chestplate>];
    var leggings = [<item:minecraft:chainmail_leggings>,<item:minecraft:iron_leggings>,<item:minecraft:golden_leggings>,<item:minecraft:netherite_leggings>,<item:alloyed:steel_leggings>,<item:create_sa:brass_leggings>,<item:create_sa:zinc_leggings>,<item:create_sa:copper_leggings>,<item:immersive_armors:wither_leggings>];
    var boots = [<item:minecraft:chainmail_boots>,<item:minecraft:iron_boots>,<item:minecraft:golden_boots>,<item:minecraft:netherite_boots>,<item:alloyed:steel_boots>,<item:create_sa:brass_boots>,<item:create_sa:zinc_boots>,<item:create_sa:copper_boots>,<item:immersive_armors:wither_boots>];

    for index, name in names{
        if name != "chain"{
            craftingTable.remove(helmets[index]);
            craftingTable.remove(chestplates[index]);
            craftingTable.remove(leggings[index]);
            craftingTable.remove(boots[index]);
        }
        addArmourSetRecipes(name,materials[index],helmets[index],chestplates[index],leggings[index],boots[index]);
    }

//Exceptions
    //Clockwork Armour
        //Helmet - <item:immersive_armors:steampunk_helmet>
        craftingTable.remove(<item:immersive_armors:steampunk_helmet>);
        craftingTable.addShapedMirrored("radargoggles",MirrorAxis.HORIZONTAL,<item:immersive_armors:steampunk_helmet>,[
            [<item:minecraft:air>,<tag:items:forge:string>,<item:minecraft:air>],
            [<item:create:redstone_link>,<item:minecraft:air>,<item:create:cogwheel>],
            [<tag:items:forge:glass>,<item:create:golden_sheet>,<tag:items:forge:glass>]]); 

        //Chestplate - <item:immersive_armors:steampunk_chestplate>.withTag({capeAngles: {lastTickDelta: 1.0, capeX: 0.0, capeY: 0.0, capeZ: 0.0}})
        craftingTable.remove(<item:immersive_armors:steampunk_chestplate>);
        craftingTable.addShapedMirrored("clockworkchestplate",MirrorAxis.HORIZONTAL,<item:immersive_armors:steampunk_chestplate>.withTag({capeAngles: {lastTickDelta: 1.0, capeX: 0.0, capeY: 0.0, capeZ: 0.0}}) ,[
            [<item:create:brass_sheet>,<item:minecraft:air>,<item:create:brass_sheet>],
            [<item:create:large_cogwheel>,<item:create:brass_sheet>,<item:create:brass_sheet>],
            [<item:minecraft:compass>,<item:create:cogwheel>,<item:minecraft:clock>]]); 

        //Leggings - <item:immersive_armors:steampunk_leggings>
        craftingTable.remove(<item:immersive_armors:steampunk_leggings>);
        craftingTable.addShaped("clockworkleggings",<item:immersive_armors:steampunk_leggings>,[
            [<item:create:brass_sheet>,<item:create:copper_backtank>.withTag({Air: 900}),<item:create:brass_sheet>],
            [<item:create:fluid_pipe>,<item:minecraft:air>,<item:create:fluid_pipe>],
            [<item:create:brass_sheet>,<item:minecraft:air>,<item:create:brass_sheet>]]); 

        //Boots - <item:immersive_armors:steampunk_boots>
        craftingTable.remove(<item:immersive_armors:steampunk_boots>);
        craftingTable.addShaped("clockworkboots",<item:immersive_armors:steampunk_boots>,[
            [<item:create:copper_backtank>.withTag({Air: 900}),<item:minecraft:air>,<item:create:copper_backtank>.withTag({Air: 900})],
            [<item:create:brass_sheet>,<item:minecraft:air>,<item:create:brass_sheet>],
            [<item:create:fluid_pipe>,<item:minecraft:air>,<item:create:fluid_pipe>]]); 

    //Wooden Armour
        //Helmet - <item:immersive_armors:wooden_helmet>
        craftingTable.remove(<item:immersive_armors:wooden_helmet>);
        craftingTable.addShaped("wooden_helmet",<item:immersive_armors:wooden_helmet>,[
            [<item:minecraft:iron_nugget>,<tag:items:immersive_weathering:bark>,<item:minecraft:iron_nugget>],
            [<tag:items:immersive_weathering:bark>,<item:minecraft:air>,<tag:items:immersive_weathering:bark>]]);

        //Chestplate - <item:immersive_armors:wooden_chestplate>
        craftingTable.remove(<item:immersive_armors:wooden_chestplate>);
        craftingTable.addShaped("wooden_chestplate",<item:immersive_armors:wooden_chestplate> ,[
            [<tag:items:immersive_weathering:bark>,<item:minecraft:air>,<tag:items:immersive_weathering:bark>],
            [<item:minecraft:iron_nugget>,<tag:items:immersive_weathering:bark>,<item:minecraft:iron_nugget>],
            [<tag:items:immersive_weathering:bark>,<item:minecraft:iron_nugget>,<tag:items:immersive_weathering:bark>]]);

        //Leggings - <item:immersive_armors:wooden_leggings>
        craftingTable.remove(<item:immersive_armors:wooden_leggings>);
        craftingTable.addShaped("wooden_leggings",<item:immersive_armors:wooden_leggings>,[
            [<tag:items:immersive_weathering:bark>,<tag:items:immersive_weathering:bark>,<tag:items:immersive_weathering:bark>],
            [<item:minecraft:iron_nugget>,<item:minecraft:air>,<item:minecraft:iron_nugget>],
            [<tag:items:immersive_weathering:bark>,<item:minecraft:air>,<tag:items:immersive_weathering:bark>]]); 

        //Boots - <item:immersive_armors:wooden_boots>
        craftingTable.remove(<item:immersive_armors:wooden_boots>);
        craftingTable.addShaped("wooden_boots",<item:immersive_armors:wooden_boots>,[
            [<item:minecraft:iron_nugget>,<item:minecraft:air>,<item:minecraft:iron_nugget>],
            [<tag:items:immersive_weathering:bark>,<item:minecraft:air>,<tag:items:immersive_weathering:bark>],
            [<tag:items:immersive_weathering:bark>,<item:minecraft:air>,<tag:items:immersive_weathering:bark>]]); 
    //Warrior Armour
        //Helmet - <item:immersive_armors:warrior_helmet>
        craftingTable.remove(<item:immersive_armors:warrior_helmet>);
        craftingTable.addShaped("warrior_helmet",<item:immersive_armors:warrior_helmet>,[
            [<item:minecraft:bone>,<item:create:iron_sheet>,<item:minecraft:bone>],
            [<item:create:iron_sheet>,<item:minecraft:leather_helmet>,<item:create:iron_sheet>]]);

        //Chestplate - <item:immersive_armors:warrior_chestplate>
        craftingTable.remove(<item:immersive_armors:warrior_chestplate>);
        craftingTable.addShaped("warrior_chestplate",<item:immersive_armors:warrior_chestplate> ,[
            [<item:create:iron_sheet>,<tag:items:forge:rope>,<item:create:iron_sheet>],
            [<item:create:iron_sheet>,<item:minecraft:leather_chestplate>,<item:create:iron_sheet>]]);

        //Leggings - <item:immersive_armors:warrior_leggings>
        craftingTable.remove(<item:immersive_armors:warrior_leggings>);
        craftingTable.addShaped("warrior_leggings",<item:immersive_armors:warrior_leggings>,[
            [<item:create:iron_sheet>,<item:minecraft:leather_leggings>,<item:create:iron_sheet>],
            [<item:create:iron_sheet>,<item:minecraft:air>,<item:create:iron_sheet>],
            [<item:create:iron_sheet>,<item:minecraft:air>,<item:create:iron_sheet>]]); 

        //Boots - <item:immersive_armors:warrior_boots>
        craftingTable.remove(<item:immersive_armors:warrior_boots>);
        craftingTable.addShaped("warrior_boots",<item:immersive_armors:warrior_boots>,[
            [<item:create:iron_sheet>,<item:minecraft:leather_boots>,<item:create:iron_sheet>]]);
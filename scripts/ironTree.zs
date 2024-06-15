import crafttweaker.api.recipe.StoneCutterManager;
import mods.create.SplashingManager;
import mods.create.SandPaperPolishingManager;
import mods.create.MixingManager;
import mods.jeitweaker.Jei;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.item.IItemStack;


function addBarRecipe(name as string, raw as IItemStack, product as IItemStack) as void{
    craftingTable.addShaped(name + "_bars",product * 8,[
        [raw,raw,raw],
        [raw,raw,raw]]);
}
function addGrabBarRecipe(name as string, raw as IItemStack, product as IItemStack) as void{
    craftingTable.addShaped(name + "_grab_rails",product * 4,[
        [raw,<item:minecraft:air>,raw],
        [raw,<item:minecraft:air>,raw],
        [raw,<item:minecraft:air>,raw]]);
}

//Crafting Recipes
    //Removals
        var CraftingRemovals = [
            <item:dustrial_decor:industrial_iron_block>,
            <item:dustrial_decor:industrial_iron_billet>,
            <item:dustrial_decor:sheet_metal_plating>,
            <item:dustrial_decor:rusty_sheet_metal_door>,
            <item:dustrial_decor:cast_iron_block>,
            <item:architects_palette:sheet_metal_block>,
            <item:dustrial_decor:cast_iron_billet>,
            <item:createdeco:iron_mesh_fence>,
            <item:minecraft:iron_bars>,
            <item:dustrial_decor:barbed_iron_bars>,
            <item:dustrial_decor:barbed_chain_link_fence>,
            <item:alloyed:steel_block>,
            //Chains
                <item:decorative_blocks:chain>,
                <item:dustrial_decor:large_chain>,
                <item:minecraft:chain>,
                <item:dustrial_decor:gold_chain>,
                <item:dustrial_decor:large_gold_chain>,
            //Brewing
                <item:minecraft:brewing_stand>,
                <item:minecraft:cauldron>,
            //Architects palette
                <item:architects_palette:tread_plate>
                ];
        for x in CraftingRemovals {
            craftingTable.remove(x);
        }




        

        //`Dustrial Decor Rust Blocks
            craftingTable.remove(<item:dustrial_decor:rusty_sheet_metal_plating>);
            craftingTable.remove(<item:dustrial_decor:rusty_sheet_metal_paneling>);
            craftingTable.remove(<item:dustrial_decor:rusty_sheet_metal_treading>);
            craftingTable.remove(<item:dustrial_decor:rusty_sheet_metal_siding>);
            craftingTable.remove(<item:dustrial_decor:rusty_sheet_metal_walling>);
            craftingTable.remove(<item:dustrial_decor:sheet_metal_plating>);
    
    //Additions
        //Cauldron
            craftingTable.addShaped("cauldron",<item:minecraft:cauldron>,
                [[<item:alloyed:steel_sheet>,<item:minecraft:air>,<item:alloyed:steel_sheet>],
                 [<item:alloyed:steel_sheet>,<item:alloyed:steel_sheet>,<item:alloyed:steel_sheet>],
                 [<item:alloyed:steel_nugget>,<item:minecraft:air>,<item:alloyed:steel_nugget>]]);
        //Brewing Stand
            craftingTable.addShaped("brewing_stand",<item:minecraft:brewing_stand>,
                [[<item:alloyed:steel_nugget>,<item:alloyed:steel_sheet>,<item:alloyed:steel_nugget>],
                 [<item:minecraft:air>,<item:minecraft:blaze_rod>,<item:minecraft:air>],
                 [<tag:items:forge:stone>,<tag:items:forge:stone>,<tag:items:forge:stone>]]);
        //Steel BLock
        craftingTable.addShaped("steel_block", <item:sundialres:steel_block>, 
                [[<item:alloyed:steel_ingot>,<item:alloyed:steel_ingot>,<item:alloyed:steel_ingot>],
                 [<item:alloyed:steel_ingot>,<item:alloyed:steel_ingot>,<item:alloyed:steel_ingot>],
                 [<item:alloyed:steel_ingot>,<item:alloyed:steel_ingot>,<item:alloyed:steel_ingot>]]);

        var rods = [
            <item:sundialres:andesite_rod>,
            <item:sundialres:zinc_rod>,
            <item:createaddition:copper_rod>,
            <item:createaddition:iron_rod>,
            <item:createaddition:gold_rod>,
            <item:sundialres:steel_rod>,
            <item:sundialres:cast_iron_rod>,
            <item:createaddition:brass_rod>];
        //Bars
            var bars = [
                <item:createdeco:andesite_bars>,
                <item:createdeco:zinc_bars>,
                <item:createdeco:copper_bars>,
                <item:minecraft:iron_bars>,
                <item:createdeco:gold_bars>,
                <item:alloyed:steel_bars>,
                <item:createdeco:cast_iron_bars>,
                <item:createdeco:brass_bars>];

            var barRecipeNames = ["andesite","zinc","copper","iron","gold","steel","cast_iron","brass"];

            for index, name in barRecipeNames{
                stoneCutter.remove(bars[index]);
                craftingTable.remove(bars[index]);
                addBarRecipe(name,rods[index],bars[index]);
            }
        
        //Grab Bars
            var grabBarRods = [
                <item:sundialres:andesite_rod>,
                <item:createaddition:copper_rod>,
                <item:createaddition:brass_rod>
            ];
            var grabBars = [
                <item:bellsandwhistles:andesite_grab_rails>,
                <item:bellsandwhistles:copper_grab_rails>,
                <item:bellsandwhistles:brass_grab_rails>];

            var grabBarRecipeNames = ["andesite","copper","brass"];

            for index, name in grabBarRecipeNames{
                stoneCutter.remove(grabBars[index]);
                craftingTable.remove(grabBars[index]);
                addGrabBarRecipe(name,grabBarRods[index],grabBars[index]);
            }

        //Ladders
            var ladders = [<item:create:andesite_ladder>,<item:createdeco:zinc_ladder>,<item:create:copper_ladder>,<item:createdeco:iron_ladder>,<item:createdeco:gold_ladder>,<item:alloyed:steel_ladder>,<item:createdeco:cast_iron_ladder>,<item:create:brass_ladder>];
            var ladderRecipeNames = ["andesite_ladder","zinc_ladder","copper_ladder","iron_ladder","gold_ladder","steel_ladder","cast_iron","brass_ladder"];
            for index, x in rods{
                if (index < 4){
                craftingTable.addShaped(ladderRecipeNames[index],ladders[index] * 4,[[x,<item:minecraft:air>,x],
                                                                               [x,x                   ,x],
                                                                               [x,<item:minecraft:air>,x]]
                );
                }
            }
        //Chains
        var rodsForChains = [<item:createaddition:iron_rod>,<item:createaddition:gold_rod>];

            var chains = [<item:minecraft:chain>,<item:dustrial_decor:gold_chain>];
            var chainRecipeNames = ["chain","goldchain"];
            for index, x in rodsForChains{
                craftingTable.addShaped(chainRecipeNames[index],chains[index] * 8,[[x],
                                                                                   [x]]);
            }

            var largeChains = [<item:dustrial_decor:large_chain>,<item:dustrial_decor:large_gold_chain>];
            var largeChainRecipeNames = ["largechain","largegoldchain"];
            for index, x in rodsForChains{
                craftingTable.addShaped(largeChainRecipeNames[index],largeChains[index] * 4,[[<item:minecraft:air>,x,<item:minecraft:air>],
                                                                                             [x,<item:minecraft:air>                   ,x],
                                                                                             [<item:minecraft:air>,x,<item:minecraft:air>]]);
            }
            //Industrial Chain
            craftingTable.addShapedMirrored("industrialchain",MirrorAxis.HORIZONTAL,<item:decorative_blocks:chain> * 4,[[<item:minecraft:air>,<item:createaddition:iron_rod>,<item:create:iron_sheet>],
                                                                                                                        [<item:createaddition:iron_rod>,<item:minecraft:air>,<item:createaddition:iron_rod>],
                                                                                                                        [<item:create:iron_sheet>,<item:createaddition:iron_rod>,<item:minecraft:air>]]);

        //Wire fences
            craftingTable.addShaped("iron_mesh", <item:createdeco:iron_mesh_fence> * 8, 
                [[<item:createaddition:iron_wire>,<item:createaddition:iron_wire>,<item:createaddition:iron_wire>],
                 [<item:createaddition:iron_wire>,<item:createaddition:iron_wire>,<item:createaddition:iron_wire>]]);
        
        //Bolted Metals
            var boltProducts = [<item:dustrial_decor:sheet_metal_plating>,<item:quark:iron_plate>,<item:architects_palette:plating_block>];
            var boltNames = ["boltediron","boltedsteel","boltedcastiron"];
            var bolts = [<item:minecraft:iron_nugget>,<item:alloyed:steel_nugget>,<item:createdeco:cast_iron_nugget>];
            var plates = [<item:immersive_weathering:plate_iron>,<item:sundialres:plate_steel>,<item:dustrial_decor:cast_iron_block>];
            for index, x in plates{
                var y = bolts[index];
                craftingTable.addShaped(boltNames[index],boltProducts[index],[[<item:minecraft:air>,y,<item:minecraft:air>],
                                                                                  [y                   ,x                   ,y],
                                                                                  [<item:minecraft:air>,y,<item:minecraft:air>]]
                );
            }
        

//Stonecutter recipes
    //Removals
        var stonecutterByNameRemovals = ["alloyed:stonecutting/steel_sheet_metal_from_steel_block",
                                         "createdeco:cast_iron_sheet_metal_from_cast_iron_block_stonecutting",
                                         "createdeco:iron_sheet_metal_from_iron_block_stonecutting"
                                         ];
        for x in stonecutterByNameRemovals {
            stoneCutter.removeByName(x);
        }

        var stonecutterRemovals = [
                                    <item:createdeco:cast_iron_ladder>,
                                    <item:architects_palette:iron_nub>,
                                    <item:create:andesite_ladder>,
                                    <item:create:brass_ladder>,
                                    <item:create:copper_ladder>,
                                    <item:alloyed:steel_ladder>,
                                    <item:createdeco:netherite_ladder>,
                                    <item:createdeco:iron_ladder>,
                                    <item:createdeco:gold_ladder>,
                                    <item:createdeco:zinc_ladder>,

                                //Misc
                                    <item:architects_palette:iron_nub>,
                                    <item:create:industrial_iron_block>
                                    ];
            for x in stonecutterRemovals {
                stoneCutter.remove(x);
            }

    //Additions
        //Iron Sheet
            stoneCutter.addRecipe("iron_to_plateiron", <item:immersive_weathering:plate_iron> * 2, <item:create:iron_sheet>);
            stoneCutter.addRecipe("iron_to_industrialiron", <item:create:industrial_iron_block> * 2, <item:create:iron_sheet>);
        //Steel Sheet
            stoneCutter.addRecipe("steel_to_platesteel", <item:sundialres:plate_steel> * 2, <item:alloyed:steel_sheet>);

        //Reinforced Plate Iron
            stoneCutter.addRecipe("irontreading_to_ironpaneling",             <item:dustrial_decor:sheet_metal_paneling>, <item:dustrial_decor:sheet_metal_treading>);
            stoneCutter.addRecipe("ironsiding_to_ironpaneling",               <item:dustrial_decor:sheet_metal_paneling>, <item:dustrial_decor:sheet_metal_siding>);
            stoneCutter.addRecipe("ironwalling_to_ironpaneling",              <item:dustrial_decor:sheet_metal_paneling>, <item:dustrial_decor:sheet_metal_walling>);
            //
            stoneCutter.addRecipe("ironpaneling_to_irontreading",             <item:dustrial_decor:sheet_metal_treading>, <item:dustrial_decor:sheet_metal_paneling>);
            stoneCutter.addRecipe("ironsiding_to_irontreading",               <item:dustrial_decor:sheet_metal_treading>, <item:dustrial_decor:sheet_metal_siding>);
            stoneCutter.addRecipe("ironwalling_to_irontreading",              <item:dustrial_decor:sheet_metal_treading>, <item:dustrial_decor:sheet_metal_walling>);
            //
            stoneCutter.addRecipe("ironpaneling_to_ironsiding",             <item:dustrial_decor:sheet_metal_siding>, <item:dustrial_decor:sheet_metal_paneling>);
            stoneCutter.addRecipe("irontreadiing_to_ironsiding",            <item:dustrial_decor:sheet_metal_siding>, <item:dustrial_decor:sheet_metal_treading>);
            stoneCutter.addRecipe("ironwalling_to_ironsiding",              <item:dustrial_decor:sheet_metal_siding>, <item:dustrial_decor:sheet_metal_walling>);
            //
            stoneCutter.addRecipe("ironpaneling_to_ironwalling",             <item:dustrial_decor:sheet_metal_walling>, <item:dustrial_decor:sheet_metal_paneling>);
            stoneCutter.addRecipe("irontreadiing_to_ironwalling",            <item:dustrial_decor:sheet_metal_walling>, <item:dustrial_decor:sheet_metal_treading>);
            stoneCutter.addRecipe("ironsiding_to_ironwalling",               <item:dustrial_decor:sheet_metal_walling>, <item:dustrial_decor:sheet_metal_siding>);
        //Cast Iron
            stoneCutter.addRecipe("castiron_to_castironblock", <item:dustrial_decor:cast_iron_block> * 2, <item:createdeco:cast_iron_ingot>);
            stoneCutter.addRecipe("castiron_to_industrialironblock", <item:create:industrial_iron_block> *2, <item:createdeco:cast_iron_ingot>);
        //Cast Iron Sheet
            stoneCutter.addRecipe("castironsheet_to_castironblock", <item:dustrial_decor:cast_iron_block> * 2, <item:createdeco:cast_iron_sheet>);
            stoneCutter.addRecipe("castironsheet_to_industrialironblock", <item:create:industrial_iron_block> *2, <item:createdeco:cast_iron_sheet>);
        //Cast Iron Plating
            stoneCutter.addRecipe("castironplating_to_engravedcastiron", <item:dustrial_decor:cast_iron_bricks>, <item:dustrial_decor:cast_iron_block>);
            stoneCutter.addRecipe("castironplating_to_castironpillar" , <item:dustrial_decor:cast_iron_pillar>, <item:dustrial_decor:cast_iron_block>);
            stoneCutter.addRecipe("castironplating_to_castironbricks" ,<item:dustrial_decor:engraved_cast_iron_block>, <item:dustrial_decor:cast_iron_block>);
        //Plate Iron
            stoneCutter.addRecipe("plateiron_to_ironnub", <item:architects_palette:iron_nub> * 2, <item:immersive_weathering:plate_iron>);
            stoneCutter.addRecipe("plateiron_to_boldironsheetmetal", <item:architects_palette:sheet_metal_block>, <item:immersive_weathering:plate_iron>);
        //Steel Ingot
            stoneCutter.addRecipe("steel_to_steelplating", <item:quark:iron_plate> * 2, <item:alloyed:steel_ingot>);
            //stoneCutter.addRecipe("steel_to_boldsteelplating", <item:davebuildingmod:polished_steel_plating> * 2, <item:alloyed:steel_ingot>);
            //stoneCutter.addRecipe("steel_to_roughsteelplating", <item:davebuildingmod:steel_plating> * 2, <item:alloyed:steel_ingot>);
        //Asurine Block Variants
            stoneCutter.addRecipe("asurinesteel_to_asurinesteelblock", <item:dustrial_decor:industrial_iron_block> * 2, <item:dustrial_decor:industrial_iron_billet>);
            stoneCutter.addRecipe("asurinesteelblock_to_boltedasurinesteel", <item:dustrial_decor:industrial_iron_billet>, <item:dustrial_decor:bolted_industrial_iron_block>);
            stoneCutter.addRecipe("asurinesteelblock_to_asurinesteelpillar", <item:dustrial_decor:industrial_iron_billet>, <item:dustrial_decor:industrial_iron_pillar>);

//Splashing (Washing)
    //Oxidising Things
        //Iron
            <recipetype:create:splashing>.addRecipe("rustironblock", [<item:dustrial_decor:rusty_iron_block> % 100], <item:minecraft:iron_block>);

        //Plateiron
            <recipetype:create:splashing>.addRecipe("rustplateiron0", [<item:immersive_weathering:exposed_plate_iron> % 100], <item:immersive_weathering:plate_iron>);
            <recipetype:create:splashing>.addRecipe("rustplateiron1", [<item:immersive_weathering:weathered_plate_iron> % 100], <item:immersive_weathering:exposed_plate_iron>);
            <recipetype:create:splashing>.addRecipe("rustplateiron2", [<item:immersive_weathering:rusted_plate_iron> % 100], <item:immersive_weathering:weathered_plate_iron>);
        //Iron Sheet Metal
            <recipetype:create:splashing>.addRecipe("rustreinforcedironsheetmetal", [<item:dustrial_decor:rusty_sheet_metal_plating> % 100], <item:dustrial_decor:sheet_metal_plating>);
            <recipetype:create:splashing>.addRecipe("rustironpaneling", [<item:dustrial_decor:rusty_sheet_metal_paneling> % 100], <item:dustrial_decor:sheet_metal_paneling>);
            <recipetype:create:splashing>.addRecipe("rustirontreading", [<item:dustrial_decor:rusty_sheet_metal_treading> % 100], <item:dustrial_decor:sheet_metal_treading>);
            <recipetype:create:splashing>.addRecipe("rustironsiding", [<item:dustrial_decor:rusty_sheet_metal_siding> % 100], <item:dustrial_decor:sheet_metal_siding>);
            <recipetype:create:splashing>.addRecipe("rustironwalling", [<item:dustrial_decor:rusty_sheet_metal_walling> % 100], <item:dustrial_decor:sheet_metal_walling>);
            <recipetype:create:splashing>.addRecipe("rustsheetirondoor", [<item:dustrial_decor:rusty_sheet_metal_door> % 100], <item:dustrial_decor:sheet_metal_door>);
            <recipetype:create:splashing>.addRecipe("rustsheetirontrapdoor", [<item:dustrial_decor:rusty_sheet_metal_trapdoor> % 100], <item:dustrial_decor:sheet_metal_trapdoor>);
        //Steel
            <recipetype:create:splashing>.addRecipe("ruststeelplating", [<item:dustrial_decor:rusty_sheet_metal_door> % 100], <item:dustrial_decor:sheet_metal_door>);


//Sandpaper Polishing
    //Steel Polishing
        <recipetype:create:sandpaper_polishing>.addRecipe("boltedsteelplating_to_polishedboltedsteelplating", <item:alloyed:steel_block>, <item:quark:iron_plate>);
        <recipetype:create:sandpaper_polishing>.addRecipe("steelplating_to_polishedsteel", <item:sundialres:polished_plate_steel>, <item:sundialres:plate_steel>);
    //Rust Removal
        <recipetype:create:sandpaper_polishing>.addRecipe("rustyboltedsteelplating_to_boltedsteelplating", <item:quark:iron_plate>, <item:quark:rusty_iron_plate>);

        //<recipetype:create:sandpaper_polishing>.addRecipe("boldsteelplating_to_polishedsteel", <item:alloyed:steel_block>, <item:davebuildingmod:polished_steel_plating>, 200);
        //<recipetype:create:sandpaper_polishing>.addRecipe("roughsteelplating_to_polishedsteel", <item:alloyed:steel_block>, <item:davebuildingmod:steel_plating>, 200);

//Mixing Recipes
    //Addtions
        //Asurine Mixing
            <recipetype:create:mixing>.addRecipe("asurineinfusedsteelmixing", <constant:create:heat_condition:heated>, [<item:dustrial_decor:industrial_iron_billet> * 8], [<item:create:asurine>,<item:alloyed:steel_ingot> * 4], [], 200);

//Item application
    //Chain Link fence
        <recipetype:create:item_application>.addRecipe("chain_link_fence", [<item:dustrial_decor:chain_link_fence> % 100], <item:sundialres:steel_wire>, <item:sundialres:steel_wire>, false);
    //Barbed Wire and Fences
        <recipetype:create:item_application>.addRecipe("barbedfence", [<item:dustrial_decor:barbed_chain_link_fence> % 100], <item:dustrial_decor:chain_link_fence>, <item:minecraft:iron_nugget>, false);
        <recipetype:create:item_application>.addRecipe("barbedbars", [<item:dustrial_decor:barbed_iron_bars> % 100], <item:minecraft:iron_bars>, <item:minecraft:iron_nugget>, false);
    //Sheet Metals
        <recipetype:create:item_application>.addRecipe("steelsheetmetal", [<item:alloyed:steel_sheet_metal> % 100], <item:sundialres:polished_plate_steel>, <item:alloyed:steel_sheet>, false);
        <recipetype:create:item_application>.addRecipe("castironsheetmetal", [<item:createdeco:cast_iron_sheet_metal> % 100], <item:dustrial_decor:cast_iron_block>, <item:createdeco:cast_iron_sheet>, false);
        <recipetype:create:item_application>.addRecipe("ironsheetmetal", [<item:createdeco:iron_sheet_metal> % 100], <item:immersive_weathering:plate_iron>, <item:create:iron_sheet>, false);

    //Metal Checkerplate
    <recipetype:create:item_application>.addRecipe("castironcheckerplate", [<item:architects_palette:tread_plate> % 100], <item:dustrial_decor:cast_iron_block>, <item:createdeco:cast_iron_nugget>, false);
    <recipetype:create:item_application>.addRecipe("ironcheckerplate", [<item:dustrial_decor:sheet_metal_treading> % 100], <item:immersive_weathering:plate_iron>, <item:minecraft:iron_nugget>, false);


//Rolling mill
var resourceRods = [
    "andesite"
];
var resourceRodIngredients = [
    "create:andesite_alloy"
];
for x in resourceRods {
    <recipetype:createaddition:rolling>.addJsonRecipe( x + "_rod", {
        "type": "createaddition:rolling",
        "result": {
            "item": "sundialres:" + x + "_rod",
            "count": 2
        },
        "ingredients": [
            {
                "item": x
            }
        ]
    });
}
import crafttweaker.api.item.IItemStack;
import mods.create.SequencedAssemblyManager;
import mods.createtweaker.SequencedAssemblyRecipeBuilder;
import mods.jeitweaker.Jei;

var recipeRemovals = [
    <item:immersive_aircraft:airship>,
    <item:immersive_aircraft:gyrodyne>,
    <item:immersive_aircraft:biplane>,
    <item:immersive_aircraft:quadrocopter>,
    <item:immersive_aircraft:hull>,
    <item:immersive_aircraft:boiler>,
    <item:immersive_aircraft:eco_engine>,
    <item:immersive_aircraft:improved_landing_gear>,
    <item:immersive_aircraft:industrial_gears>,
    <item:immersive_aircraft:sturdy_pipes>,
    <item:immersive_aircraft:gyroscope>,
    <item:immersive_aircraft:hull_reinforcement>,
    <item:immersive_aircraft:propeller>,
    <item:immersive_aircraft:sail>,
    <item:immersive_aircraft:enhanced_propeller>
];
for x in recipeRemovals{
    craftingTable.remove(x);
}

Jei.hideIngredient(<item:create_sa:hydraulic_engine>);
Jei.hideIngredient(<item:immersive_aircraft:engine>);


var Ai = <item:minecraft:air>;
var Sa = <item:immersive_aircraft:sail>;
var Hu = <item:immersive_aircraft:hull>;
var HE = <item:create_sa:heat_engine>;
var SE = <item:immersive_aircraft:boiler>;
var Pr = <item:create:propeller>;
var LP = <item:immersive_aircraft:propeller>;
var RN = <item:comforts:rope_and_nail>;
var TC = <item:create:railway_casing>;
var WL = <tag:items:minecraft:wool>;
var Se = <tag:items:create:seats>;
var st = <tag:items:forge:rods/wooden>;
var St = <tag:items:forge:stone>;
var QW = <item:minecraft:white_wool>;
var Pl = <tag:items:minecraft:planks>;
var Aa = <item:create:andesite_alloy>;
var Is = <item:create:iron_sheet>;
var Bs = <item:create:brass_sheet>;


//Aircraft
    //Airship
        <recipetype:create:mechanical_crafting>.addRecipe("airshipcrafting1", <item:immersive_aircraft:airship>, 
        [[Ai,Sa,Sa,Sa,Sa,Ai],
         [Ai,Sa,Sa,Sa,Sa,Ai],
         [Sa,Hu,RN,RN,HE,Pr],
         [Ai,Hu,Hu,Hu,TC,Ai]]
        );

        <recipetype:create:mechanical_crafting>.addRecipe("airshipcrafting2", <item:immersive_aircraft:airship>, 
        [[Ai,Sa,Sa,Sa,Sa,Ai],
         [Ai,Sa,Sa,Sa,Sa,Ai],
         [Pr,HE,RN,RN,Hu,Sa],
         [Ai,TC,Hu,Hu,Hu,Ai]]
        );

    //Gyrodyne
         <recipetype:create:mechanical_crafting>.addRecipe("gyrodynecrafting1", <item:immersive_aircraft:gyrodyne>, 
        [[Ai,Ai,Ai,Pr,Ai],
         [Ai,Ai,Sa,st,Sa],
         [St,st,Hu,Hu,Hu]]
        );

         <recipetype:create:mechanical_crafting>.addRecipe("gyrodynecrafting2", <item:immersive_aircraft:gyrodyne>, 
        [[Ai,Pr,Ai,Ai,Ai],
         [Sa,st,Sa,Ai,Ai],
         [Hu,Hu,Hu,st,St]]
        );

    //Biplane
         <recipetype:create:mechanical_crafting>.addRecipe("biplanecrafting1", <item:immersive_aircraft:biplane>, 
        [[Ai,Ai,Sa,Ai,Ai,Ai,Ai],
         [Ai,Ai,Sa,Ai,Ai,Ai,Ai],
         [Ai,Ai,Sa,Hu,Ai,Ai,Sa],
         [Pr,HE,TC,Se,Hu,Hu,Hu],
         [Ai,Ai,Sa,Hu,Ai,Ai,Sa],
         [Ai,Ai,Sa,Ai,Ai,Ai,Ai],
         [Ai,Ai,Sa,Ai,Ai,Ai,Ai]]
         );

        <recipetype:create:mechanical_crafting>.addRecipe("biplanecrafting2", <item:immersive_aircraft:biplane>, 
        [[Ai,Ai,Ai,Ai,Sa,Ai,Ai],
         [Ai,Ai,Ai,Ai,Sa,Ai,Ai],
         [Sa,Ai,Ai,Hu,Sa,Ai,Ai],
         [Hu,Hu,Hu,Se,TC,HE,Pr],
         [Sa,Ai,Ai,Hu,Sa,Ai,Ai],
         [Ai,Ai,Ai,Ai,Sa,Ai,Ai],
         [Ai,Ai,Ai,Ai,Sa,Ai,Ai]]
         );

        <recipetype:create:mechanical_crafting>.addRecipe("biplanecrafting3", <item:immersive_aircraft:biplane>, 
        [[Ai,Ai,Ai,Pr,Ai,Ai,Ai],
         [Ai,Ai,Ai,HE,Ai,Ai,Ai],
         [Sa,Sa,Sa,TC,Sa,Sa,Sa],
         [Ai,Ai,Hu,Se,Hu,Ai,Ai],
         [Ai,Ai,Ai,Hu,Ai,Ai,Ai],
         [Ai,Ai,Ai,Hu,Ai,Ai,Ai],
         [Ai,Ai,Sa,Hu,Sa,Ai,Ai]]
         );

        <recipetype:create:mechanical_crafting>.addRecipe("biplanecrafting4", <item:immersive_aircraft:biplane>, 
        [[Ai,Ai,Sa,Hu,Sa,Ai,Ai],
         [Ai,Ai,Ai,Hu,Ai,Ai,Ai],
         [Ai,Ai,Ai,Hu,Ai,Ai,Ai],
         [Ai,Ai,Hu,Se,Hu,Ai,Ai],
         [Sa,Sa,Sa,TC,Sa,Sa,Sa],
         [Ai,Ai,Ai,HE,Ai,Ai,Ai],
         [Ai,Ai,Ai,Pr,Ai,Ai,Ai]]
         );

    //Quadcopter
        <recipetype:create:mechanical_crafting>.addRecipe("quadcoptercrafting1", <item:immersive_aircraft:quadrocopter>, 
        [[Pr,Ai,Pr],
         [Hu,WL,Hu],
         [Hu,WL,SE],
         [Pr,Ai,Pr]]
         );

         <recipetype:create:mechanical_crafting>.addRecipe("quadcoptercrafting2", <item:immersive_aircraft:quadrocopter>, 
        [[Pr,Ai,Pr],
         [Hu,WL,SE],
         [Hu,WL,Hu],
         [Pr,Ai,Pr]]
         );

         <recipetype:create:mechanical_crafting>.addRecipe("quadcoptercrafting3", <item:immersive_aircraft:quadrocopter>, 
        [[Pr,Ai,Pr],
         [SE,WL,Hu],
         [Hu,WL,Hu],
         [Pr,Ai,Pr]]
         );

         <recipetype:create:mechanical_crafting>.addRecipe("quadcoptercrafting4", <item:immersive_aircraft:quadrocopter>, 
        [[Pr,Ai,Pr],
         [Hu,WL,Hu],
         [SE,WL,Hu],
         [Pr,Ai,Pr]]
         );

         <recipetype:create:mechanical_crafting>.addRecipe("quadcoptercrafting5", <item:immersive_aircraft:quadrocopter>, 
        [[Pr,Hu,Hu,Pr],
         [Ai,WL,WL,Ai],
         [Pr,Hu,SE,Pr]]
         );

         <recipetype:create:mechanical_crafting>.addRecipe("quadcoptercrafting6", <item:immersive_aircraft:quadrocopter>, 
        [[Pr,Hu,Hu,Pr],
         [Ai,WL,WL,Ai],
         [Pr,SE,Hu,Pr]]
         );

         <recipetype:create:mechanical_crafting>.addRecipe("quadcoptercrafting7", <item:immersive_aircraft:quadrocopter>, 
        [[Pr,SE,Hu,Pr],
         [Ai,WL,WL,Ai],
         [Pr,Hu,Hu,Pr]]
         );

         <recipetype:create:mechanical_crafting>.addRecipe("quadcoptercrafting8", <item:immersive_aircraft:quadrocopter>, 
        [[Pr,Hu,SE,Pr],
         [Ai,WL,WL,Ai],
         [Pr,Hu,Hu,Pr]]
         );

//Aircraft Parts
    <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_hull")
                                                      .require(<item:create:linear_chassis>)
                                                      .transitionTo(<item:railways:track_incomplete_spruce>)
                                                      .loops(2)
                                                      .addOutput(<item:immersive_aircraft:hull>, 8)
                                                      .addOutput(<item:create:andesite_casing>, 1)
                                                      .addOutput(<item:create:linear_chassis>, 1)
                                                      .addStep<mods.createtweaker.CuttingRecipe>((rb) => rb.duration(100))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createdeco:andesite_support>))
                                                      .addStep<mods.createtweaker.CuttingRecipe>((rb) => rb.duration(150))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:andesite_casing>))
                                                      .addStep<mods.createtweaker.PressingRecipe>());

    <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_simpleheatengine")
                                                      .require(<item:minecraft:copper_ingot>)
                                                      .transitionTo(<item:create_sa:incomplete_hydraulic_engine>)
                                                      .loops(3)
                                                      .addOutput(<item:immersive_aircraft:boiler>, 8)
                                                      .addOutput(<item:create:copper_sheet>, 2)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:cogwheel>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:large_cogwheel>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:copper_nugget>))
                                                      .addStep<mods.createtweaker.PressingRecipe>());

    <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_advancedheatengine")
                                                      .require(<item:create:brass_ingot>)
                                                      .transitionTo(<item:create_sa:incomplete_hydraulic_engine>)
                                                      .loops(3)
                                                      .addOutput(<item:immersive_aircraft:engine>, 8)
                                                      .addOutput(<item:create:copper_sheet>, 2)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:cogwheel>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:large_cogwheel>))
                                                      .addStep<mods.createtweaker.PressingRecipe>());

    <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_hydraulicengine")
                                                      .require(<item:create:copper_sheet>)
                                                      .transitionTo(<item:create_sa:incomplete_hydraulic_engine>)
                                                      .loops(3)
                                                      .addOutput(<item:immersive_aircraft:eco_engine>, 33)
                                                      .addOutput(<item:create:copper_sheet>, 1)
                                                      .addOutput(<item:create:copper_nugget>, 1)
                                                      .addOutput(<item:create:cogwheel>, 1)
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:minecraft:water>*250))
                                                      .addStep<mods.createtweaker.PressingRecipe>()
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:copper_nugget>))
                                                      .addStep<mods.createtweaker.PressingRecipe>());

    <recipetype:create:mechanical_crafting>.addRecipe("largesail_crafting", <item:immersive_aircraft:sail>, 
        [[Aa,st,st,Aa],
         [st,QW,QW,st],
         [st,QW,QW,st],
         [Aa,Pl,Pl,Aa]]
         );

    <recipetype:create:mechanical_crafting>.addRecipe("largeprop_crafting", <item:immersive_aircraft:propeller>,
        [[Ai,Is,Is,Ai,Ai],
         [Ai,Ai,Is,Ai,Is],
         [Is,Is,Aa,Is,Is],
         [Is,Ai,Is,Ai,Ai],
         [Ai,Ai,Is,Is,Ai]]
         );

//Aircraft Upgrades

        <recipetype:create:mechanical_crafting>.addRecipe("brassprop_crafting", <item:immersive_aircraft:enhanced_propeller>, 
        [[Ai,Bs,Bs,Ai,Ai],
         [Ai,Ai,Bs,Ai,Bs],
         [Bs,Bs,<item:create_sa:brass_cube>,Bs,Bs],
         [Bs,Ai,Bs,Ai,Ai],
         [Ai,Ai,Bs,Bs,Ai]]
         );

         craftingTable.addShaped("reinforced_hull", <item:immersive_aircraft:hull_reinforcement>, 
                [[<item:minecraft:iron_bars>,<item:minecraft:iron_bars>,<item:minecraft:iron_bars>],
                 [Hu,Hu,Hu],
                 [<item:minecraft:iron_bars>,<item:minecraft:iron_bars>,<item:minecraft:iron_bars>]]);

         craftingTable.addShaped("combustion_engine", <item:immersive_aircraft:nether_engine>, 
                [[Ai,<item:minecraft:magma_block>,Ai],
                 [<item:minecraft:magma_cream>,<item:create_sa:heat_engine>,<item:minecraft:magma_cream>],
                 [<item:minecraft:blaze_rod>,<item:create:sturdy_sheet>,<item:minecraft:blaze_rod>]]);

         <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_industrialgears")
                                                  .require(<item:create:large_cogwheel>)
                                                  .transitionTo(<item:railways:track_incomplete_spruce>)
                                                  .loops(3)
                                                  .addOutput(<item:immersive_aircraft:industrial_gears>, 8)
                                                  .addOutput(<item:create:cogwheel>, 1)
                                                  .addOutput(<item:create:large_cogwheel>, 1)
                                                  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createdeco:cast_iron_nugget>))
                                                  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:alloyed:steel_nugget>))
                                                  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:large_cogwheel>))
                                                  .addStep<mods.createtweaker.PressingRecipe>());

         craftingTable.addShapedMirrored("landinggear", <constant:minecraft:mirroraxis:horizontal>, <item:immersive_aircraft:improved_landing_gear>, 
                [[Ai,<item:createdeco:cast_iron_support>,Ai],
                 [St,<item:create:cogwheel>,<item:createdeco:cast_iron_support>],
                 [St,St,Ai]]);

         craftingTable.addShapedMirrored("gyroscope", <constant:minecraft:mirroraxis:horizontal>, <item:immersive_aircraft:gyroscope>, 
                 [
                 [<item:create:electron_tube>,Ai,<item:create:electron_tube>],
                 [<item:createaddition:electrum_spool>,<item:minecraft:compass>,<item:create:flywheel>],
                 ]);
         
         craftingTable.addShaped("sturdypipes", <item:immersive_aircraft:sturdy_pipes>, 
                [[<item:alloyed:steel_bars>,<item:alloyed:steel_bars>,<item:alloyed:steel_bars>],
                 [<item:create:fluid_pipe>,<item:create:mechanical_pump>,<item:create:fluid_pipe>],
                 [<item:alloyed:steel_bars>,<item:alloyed:steel_bars>,<item:alloyed:steel_bars>]
                 ]);

         <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("seq_steelboiler")
                                                  .require(<item:create:fluid_tank>)
                                                  .transitionTo(<item:railways:track_incomplete_spruce>)
                                                  .loops(6)
                                                  .addOutput(<item:immersive_aircraft:steel_boiler>, 8)
                                                  .addOutput(<item:create:fluid_tank>, 1)
                                                  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:alloyed:steel_sheet>))
                                                  .addStep<mods.createtweaker.PressingRecipe>());
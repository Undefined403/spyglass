import mods.jeitweaker.Jei;

//Upright on belt
    <tag:items:create:upright_on_belt>.add(
        <item:toughasnails:apple_juice>,
        <item:toughasnails:cactus_juice>,
        <item:toughasnails:chorus_fruit_juice>,
        <item:toughasnails:glow_berry_juice>,
        <item:toughasnails:melon_juice>,
        <item:toughasnails:pumpkin_juice>,
        <item:toughasnails:sweet_berry_juice>);

//Drinks
    var drinks = <tag:items:toughasnails:drinks>;
    var hydration = <tag:items:toughasnails:hydration/10_hydration_drinks>;
    var thirst = <tag:items:toughasnails:thirst/6_thirst_drinks>;
    var futuredrinks = [<item:farmersrespite:coffee>,
                        <item:farmersrespite:purulent_tea>,
                        <item:farmersrespite:dandelion_tea>,
                        <item:farmersrespite:rose_hip_tea>,
                        <item:farmersrespite:black_tea>,
                        <item:farmersrespite:yellow_tea>,
                        <item:farmersrespite:green_tea>
                        ];
    for element in futuredrinks {
        var x = element;
        drinks.add(x);
        thirst.add(x);
        hydration.add(x);
        }
    
    /*Milk Bottle
        var milk_bottle = <item:farmersdelight:milk_bottle>;
        drinks.add(milk_bottle);
        <tag:items:toughasnails:thirst/drinks>.add(milk_bottle);
        drinks.add(milk_bottle);*/
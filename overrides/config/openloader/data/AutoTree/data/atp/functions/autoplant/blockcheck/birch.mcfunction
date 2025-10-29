execute if block ~ ~-1 ~ #saps store result score .birch .saplings run setblock ~ ~ ~ birch_sapling

execute if score .birch .saplings matches 1.. run playsound item.crop.plant player @p ~ ~-1 ~

execute if score .birch .saplings matches 1.. run kill @s

scoreboard players reset .birch
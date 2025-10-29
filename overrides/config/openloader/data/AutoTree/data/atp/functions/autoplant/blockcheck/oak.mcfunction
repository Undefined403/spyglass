execute if block ~ ~-1 ~ #saps store result score .oak .saplings run setblock ~ ~ ~ oak_sapling

execute if score .oak .saplings matches 1.. run playsound item.crop.plant player @p ~ ~-1 ~

execute if score .oak .saplings matches 1.. run kill @s

scoreboard players reset .oak
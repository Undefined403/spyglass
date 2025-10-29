execute if block ~ ~-1 ~ #saps store result score .dark_oak .saplings run setblock ~ ~ ~ dark_oak_sapling

execute if score .dark_oak .saplings matches 1.. run playsound item.crop.plant player @p ~ ~-1 ~

execute if score .dark_oak .saplings matches 1.. run kill @s

scoreboard players reset .dark_oak
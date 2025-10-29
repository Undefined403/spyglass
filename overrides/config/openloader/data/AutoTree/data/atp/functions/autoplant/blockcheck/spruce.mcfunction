execute if block ~ ~-1 ~ #saps store result score .spruce .saplings run setblock ~ ~ ~ spruce_sapling

execute if score .spruce .saplings matches 1.. run playsound item.crop.plant player @p ~ ~-1 ~

execute if score .spruce .saplings matches 1.. run kill @s

scoreboard players reset .spruce
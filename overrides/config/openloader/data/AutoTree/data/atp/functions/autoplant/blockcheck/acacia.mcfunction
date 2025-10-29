execute if block ~ ~-1 ~ #saps store result score .acacia .saplings run setblock ~ ~ ~ acacia_sapling

execute if score .acacia .saplings matches 1.. run playsound item.crop.plant player @p ~ ~ ~

execute if score .acacia .saplings matches 1.. run kill @s

scoreboard players reset .acacia
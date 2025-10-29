execute if block ~ ~-1 ~ #saps store result score .jungle .saplings run setblock ~ ~ ~ jungle_sapling

execute if score .jungle .saplings matches 1.. run playsound item.crop.plant player @p ~ ~-1 ~

execute if score .jungle .saplings matches 1.. run kill @s

scoreboard players reset .jungle
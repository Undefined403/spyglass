execute if block ~ ~-1 ~ #saps store result score .cherry .saplings run setblock ~ ~ ~ cherry_sapling

execute if score .cherry .saplings matches 1.. run playsound block.cherry_sapling.place player @p ~ ~-1 ~

execute if score .cherry .saplings matches 1.. run kill @s

scoreboard players reset .cherry
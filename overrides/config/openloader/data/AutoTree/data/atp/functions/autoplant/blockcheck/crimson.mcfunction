execute if block ~ ~-1 ~ #nylium store result score .crim .saplings run setblock ~ ~ ~ crimson_fungus

execute if score .crim .saplings matches 1.. run playsound block.fungus.place player @p ~ ~-1 ~

execute if score .crim .saplings matches 1.. run kill @s

scoreboard players reset .crim
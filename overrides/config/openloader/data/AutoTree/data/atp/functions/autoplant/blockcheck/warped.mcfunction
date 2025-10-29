execute if block ~ ~-1 ~ #nylium store result score .warp .saplings run setblock ~ ~ ~ warped_fungus

execute if score .warp .saplings matches 1.. run playsound block.fungus.place player @p ~ ~-1 ~

execute if score .warp .saplings matches 1.. run kill @s

scoreboard players reset .warp
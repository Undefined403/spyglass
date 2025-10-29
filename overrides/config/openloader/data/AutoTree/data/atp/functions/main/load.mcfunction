# Plain message to show that datapack has loaded after a reload. (For debugging purposes)
tellraw @s {"text": "AutoPlant datapack has loaded."}

scoreboard objectives add .saplings dummy [{"text": "Auto","color": "dark_green","bold": true},{"text": "Plant","color": "green","bold": true}]
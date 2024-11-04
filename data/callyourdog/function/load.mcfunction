tellraw @a ["",{"text":"Call Your Dog","color":"blue","clickEvent":{"action":"open_url","value":"https://modrinth.com/project/call-your-dog"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/call-your-dog"}},{"text":" loaded - ","clickEvent":{"action":"open_url","value":"https://modrinth.com/project/call-your-dog"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/call-your-dog"}},{"text":"[1.21]","color":"green","clickEvent":{"action":"open_url","value":"https://modrinth.com/project/call-your-dog"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/call-your-dog"}},{"text":" ","clickEvent":{"action":"open_url","value":"https://modrinth.com/project/call-your-dog"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/call-your-dog"}},{"text":"v.1.1.1","color":"dark_green","clickEvent":{"action":"open_url","value":"https://modrinth.com/project/call-your-dog"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/call-your-dog"}}]

scoreboard objectives add help.callyourdog trigger

scoreboard objectives add config.callyourdog dummy

scoreboard objectives add check.callyourdog dummy

scoreboard objectives add use_goat_horn_dog minecraft.used:minecraft.goat_horn

scoreboard objectives add store_position.callyourdog dummy

scoreboard objectives add sneak_time.callyourdog custom:sneak_time

scoreboard players set @a sneak_time.callyourdog 0

scoreboard players set @a use_goat_horn_dog 0

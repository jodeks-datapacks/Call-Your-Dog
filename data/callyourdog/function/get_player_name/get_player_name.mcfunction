loot spawn ~ ~100 ~ loot callyourdog:player_head
data modify storage callyourdog:root player_name set from entity @e[nbt={Item:{components:{"minecraft:custom_data":{callyourdog_playername:1b}}}},limit=1] Item.components."minecraft:profile".name
kill @e[nbt={Item:{components:{"minecraft:custom_data":{callyourdog_playername:1b}}}}]
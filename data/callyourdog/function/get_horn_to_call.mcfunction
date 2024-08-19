scoreboard players set @s get_horn_to_call_dog 0

scoreboard players set &UUID_check check.callyourdog 1

execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=wolf] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[type=wolf,sort=nearest,limit=1] add dog_to_call
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=wolf] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @e[type=wolf,sort=nearest,limit=1] add dog_can_be_called


# compare both UUIDs
data modify storage callyourdog:root UUID set from entity @e[type=wolf,limit=1,tag=dog_to_call] Owner


execute store success score &UUID_check check.callyourdog run data modify storage callyourdog:root UUID set from entity @s UUID

# get dog UUID to store in goat horn
data modify storage callyourdog:root dog_UUID_to_call set from entity @e[type=wolf,limit=1,tag=dog_to_call] UUID


# get dog name
data modify storage callyourdog:root dog_name set from entity @e[type=wolf,limit=1,tag=dog_to_call] CustomName


# execute give goat horn
execute as @s at @s anchored eyes facing entity @e[sort=nearest,limit=1,type=wolf,tag=dog_to_call] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run function callyourdog:goat_horn_give_macro with storage callyourdog:root


scoreboard players set &UUID_check check.callyourdog 1

tag @e remove dog_to_call

scoreboard players set @s get_horn_to_call_dog 0



scoreboard players enable @a help.callyourdog

execute as @a if score @s help.callyourdog matches 1 run function callyourdog:trigger_help

scoreboard players enable @a change_goat_horn_to_call_dog

scoreboard players enable @a get_horn_to_call_dog

execute as @a if score @s get_horn_to_call_dog matches 1 run function callyourdog:get_horn_to_call


tag @a[scores={use_goat_horn_dog=1},limit=1] add calling_dog

execute as @a[scores={use_goat_horn_dog=1}] run function callyourdog:check_for_teleport

execute as @a[scores={use_goat_horn_dog=1}] run scoreboard players add time_since_goat_horn_use check.callyourdog 1

tag @a[scores={use_goat_horn_dog=0},limit=1] remove calling_dog

execute if score time_since_goat_horn_use check.callyourdog matches 8 run scoreboard players set @a use_goat_horn_dog 0
execute if score time_since_goat_horn_use check.callyourdog matches 8 run scoreboard players set time_since_goat_horn_use check.callyourdog 0


execute as @e[type=wolf,tag=dog_can_be_called] run function callyourdog:save_uuid with storage callyourdog:root




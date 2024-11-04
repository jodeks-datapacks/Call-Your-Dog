# help
scoreboard players enable @a help.callyourdog
execute as @a if score @s help.callyourdog matches 1 run function callyourdog:trigger_help

# initiate dog teleport
tag @a[scores={use_goat_horn_dog=1},limit=1] add calling_dog

execute as @a[scores={use_goat_horn_dog=1}] run function callyourdog:dog_teleport/check_for_teleport

execute as @a[scores={use_goat_horn_dog=1}] run scoreboard players add time_since_goat_horn_use check.callyourdog 1

tag @a[scores={use_goat_horn_dog=0},limit=1] remove calling_dog

# time counter for dog teleport function
execute if score time_since_goat_horn_use check.callyourdog matches 8 run scoreboard players set @a use_goat_horn_dog 0
execute if score time_since_goat_horn_use check.callyourdog matches 8 run scoreboard players set time_since_goat_horn_use check.callyourdog 0

# save dog position
execute as @e[type=wolf,tag=dog_can_be_called] run function callyourdog:dog_teleport/save_uuid with storage callyourdog:root

# sneak time counter
execute as @a[scores={sneak_time.callyourdog=40..}] if entity @s[nbt={SelectedItem:{id:"minecraft:goat_horn"}}] run function callyourdog:goat_horn_give/get_horn_to_call

execute as @a[scores={sneak_time.callyourdog=50..}] run scoreboard players set @a sneak_time.callyourdog 0


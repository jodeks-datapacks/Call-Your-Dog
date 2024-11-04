scoreboard players set &UUID_check check.callyourdog 1


data modify storage callyourdog:root dog_UUID_from_horn set from entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tag:{goat_horn_to_call_dog:2b}}}}}] SelectedItem.components."minecraft:custom_data".dog_call.UUID

data modify storage callyourdog:root UUID set from entity @s UUID

function callyourdog:goat_horn_give/check_dog_uuid_match_horn_uuid with storage callyourdog:root


execute if score &UUID_check check.callyourdog matches 0 run data modify storage callyourdog:root player_UUID set from entity @s UUID

execute if score &UUID_check check.callyourdog matches 0 run data modify storage callyourdog:root dog_name_from_horn set from entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tag:{goat_horn_to_call_dog:2b}}}}}] SelectedItem.components."minecraft:custom_name"



execute if score &UUID_check check.callyourdog matches 0 run function callyourdog:dog_teleport/get_latest_position with storage callyourdog:root


execute if score &UUID_check check.callyourdog matches 0 run execute store result score dog_UUID_lates_position_x store_position.callyourdog run data get storage callyourdog:root dog_UUID_latest_position_x

execute if score &UUID_check check.callyourdog matches 0 run execute store result score dog_UUID_lates_position_z store_position.callyourdog run data get storage callyourdog:root dog_UUID_latest_position_z

execute if score &UUID_check check.callyourdog matches 0 run execute store result storage callyourdog:root dog_UUID_latest_position_x int 1 run scoreboard players get dog_UUID_lates_position_x store_position.callyourdog

execute if score &UUID_check check.callyourdog matches 0 run execute store result storage callyourdog:root dog_UUID_latest_position_z int 1 run scoreboard players get dog_UUID_lates_position_z store_position.callyourdog


execute if score &UUID_check check.callyourdog matches 0 run function callyourdog:dog_teleport/teleport_dog with storage callyourdog:root

scoreboard players set &UUID_check check.callyourdog 1





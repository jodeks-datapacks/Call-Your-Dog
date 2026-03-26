data modify storage call_your_dog:root data.player_UUID set from entity @s UUID

function call_your_dog:teleport/get_latest_position with storage call_your_dog:root data


execute store result score cat_UUID_lates_position_x store_position.call_your_dog run data get storage call_your_dog:root data.cat_UUID_latest_position_x

execute store result score cat_UUID_lates_position_z store_position.call_your_dog run data get storage call_your_dog:root data.cat_UUID_latest_position_z

execute store result storage call_your_dog:root data.cat_UUID_latest_position_x int 1 run scoreboard players get cat_UUID_lates_position_x store_position.call_your_dog

execute store result storage call_your_dog:root data.cat_UUID_latest_position_z int 1 run scoreboard players get cat_UUID_lates_position_z store_position.call_your_dog


schedule function call_your_dog:teleport/call_initiate 1t
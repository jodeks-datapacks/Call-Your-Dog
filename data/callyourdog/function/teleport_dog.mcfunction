$execute if score time_since_goat_horn_use check.callyourdog matches 1 run forceload add $(dog_UUID_latest_position_x) $(dog_UUID_latest_position_z)

$execute if score time_since_goat_horn_use check.callyourdog matches 4 run teleport @e[type=wolf,nbt={Owner:$(player_UUID),UUID:$(dog_UUID_from_horn)}] @s

$execute if score time_since_goat_horn_use check.callyourdog matches 7 run forceload remove $(dog_UUID_latest_position_x) $(dog_UUID_latest_position_z)



data remove storage callyourdog:root dog_UUID_latest_position_x 
data remove storage callyourdog:root dog_UUID_latest_position_z 
data remove storage callyourdog:root dog_UUID_from_horn
data remove storage callyourdog:root UUID
data remove storage callyourdog:root player_UUID
data remove storage callyourdog:root dog_name_from_horn


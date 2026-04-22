advancement revoke @s only call_your_dog:used/goat_horn_offhand

scoreboard players set &UUID_check call_your_dog.check 1

execute as @s run function jodek:api/data/get/offhand_stored_uuid with storage call_your_dog:root data

execute unless data storage call_your_dog:root data.UUID_from_item run return run function call_your_dog:app/feedback/fail {translate:"call_your_dog.fail.no_uuid_item",fallback:"Failed to get entity UUID from item"}
# execute unless score &time_since_goat_horn_use call_your_dog.check matches 0 run return run function call_your_dog:app/feedback/fail {translate:"call_your_dog.fail.call_already_in_progress",fallback:"Your dog didn't hear you, try again"}

execute as @s run function call_your_dog:app/call/get_data with storage call_your_dog:root
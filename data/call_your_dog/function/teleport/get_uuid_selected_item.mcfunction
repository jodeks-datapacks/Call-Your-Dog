data modify storage call_your_dog:root data.cat_UUID_from_horn set from entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{tag:{goat_horn_to_call_cat:1b}}}}}] SelectedItem.components."minecraft:custom_data".cat_call.UUID

function call_your_dog:teleport/check_for_teleport with storage call_your_dog:root data
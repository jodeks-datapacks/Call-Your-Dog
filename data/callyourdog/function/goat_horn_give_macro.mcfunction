$execute as @s[scores={change_goat_horn_to_call_dog=0}] run give @s goat_horn[custom_name='$(dog_name)',custom_data={tag:{goat_horn_to_call_dog:2b},dog_call:{UUID:$(dog_UUID_to_call)}},enchantment_glint_override=true,instrument="minecraft:ponder_goat_horn"] 1

$execute as @s[scores={change_goat_horn_to_call_dog=1}] run give @s goat_horn[custom_name='$(dog_name)',custom_data={tag:{goat_horn_to_call_dog:2b},dog_call:{UUID:$(dog_UUID_to_call)}},enchantment_glint_override=true,instrument="minecraft:sing_goat_horn"] 1

$execute as @s[scores={change_goat_horn_to_call_dog=2}] run give @s goat_horn[custom_name='$(dog_name)',custom_data={tag:{goat_horn_to_call_dog:2b},dog_call:{UUID:$(dog_UUID_to_call)}},enchantment_glint_override=true,instrument="minecraft:seek_goat_horn"] 1

$execute as @s[scores={change_goat_horn_to_call_dog=3}] run give @s goat_horn[custom_name='$(dog_name)',custom_data={tag:{goat_horn_to_call_dog:2b},dog_call:{UUID:$(dog_UUID_to_call)}},enchantment_glint_override=true,instrument="minecraft:feel_goat_horn"] 1

$execute as @s[scores={change_goat_horn_to_call_dog=4}] run give @s goat_horn[custom_name='$(dog_name)',custom_data={tag:{goat_horn_to_call_dog:2b},dog_call:{UUID:$(dog_UUID_to_call)}},enchantment_glint_override=true,instrument="minecraft:admire_goat_horn"] 1

$execute as @s[scores={change_goat_horn_to_call_dog=5}] run give @s goat_horn[custom_name='$(dog_name)',custom_data={tag:{goat_horn_to_call_dog:2b},dog_call:{UUID:$(dog_UUID_to_call)}},enchantment_glint_override=true,instrument="minecraft:call_goat_horn"] 1

$execute as @s[scores={change_goat_horn_to_call_dog=6}] run give @s goat_horn[custom_name='$(dog_name)',custom_data={tag:{goat_horn_to_call_dog:2b},dog_call:{UUID:$(dog_UUID_to_call)}},enchantment_glint_override=true,instrument="minecraft:yearn_goat_horn"] 1

$execute as @s[scores={change_goat_horn_to_call_dog=7}] run give @s goat_horn[custom_name='$(dog_name)',custom_data={tag:{goat_horn_to_call_dog:2b},dog_call:{UUID:$(dog_UUID_to_call)}},enchantment_glint_override=true,instrument="minecraft:dream_goat_horn"] 1


data remove storage callyourdog:root UUID
data remove storage callyourdog:root horse_UUID_to_call
data remove storage callyourdog:root horse_name
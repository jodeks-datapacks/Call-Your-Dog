schedule function call_your_dog:schedule_save_uuid 1s

# save wolf position
execute as @e[type=wolf,tag=cat_can_called] run function call_your_dog:teleport/save_uuid with storage call_your_dog:root data
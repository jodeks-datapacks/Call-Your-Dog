schedule function call_your_dog:app/schedule/save/run 1s

execute as @e[predicate=call_your_dog:callable,tag=jodek.can_be_called] run function call_your_dog:app/schedule/save/save_uuid with storage call_your_dog:root data
scoreboard objectives add jodek.config dummy
execute unless score &call_your_dog_load_message jodek.config = &call_your_dog_load_message jodek.config run scoreboard players set &call_your_dog_load_message jodek.config 1
execute unless score &call_your_dog_advancements jodek.config = &call_your_dog_advancements jodek.config run scoreboard players set &call_your_dog_advancements jodek.config 1

scoreboard objectives add call_your_dog.check dummy

scoreboard objectives add call_your_dog.image dummy

scoreboard objectives add call_your_dog.config trigger
scoreboard players set @a call_your_dog.config 0

scoreboard players set &time_since_goat_horn_use call_your_dog.check 0

scoreboard players set &teleported call_your_dog.check 0

scoreboard players set &mounted call_your_dog.check 0

function call_your_dog:config/image

schedule function call_your_dog:app/schedule/save/run 1s

data modify storage call_your_dog:root data.target set value call_your_dog

schedule function call_your_dog:lib_check 1s

scoreboard objectives add call_your_dog.sneak_time custom:sneak_time
scoreboard players set @a call_your_dog.sneak_time 0
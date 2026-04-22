execute as @a[scores={call_your_dog.sneak_time=40..}] if entity @s[nbt={SelectedItem:{id:"minecraft:goat_horn"}}] run function call_your_dog:app/bind/start

execute as @a[x_rotation=-90,scores={call_your_dog.sneak_time=40..}] if entity @s[nbt={SelectedItem:{id:"minecraft:goat_horn"}}] run function call_your_dog:app/reset/start

execute as @a[scores={call_your_dog.sneak_time=40..}] run scoreboard players set @a call_your_dog.sneak_time 0
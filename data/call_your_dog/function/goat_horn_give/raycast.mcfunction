
execute positioned ~-0.05 ~-0.05 ~-0.05 as @e[distance=..10,type=wolf] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 run return run function call_your_dog:goat_horn_give/tag

scoreboard players add #steps raycast_steps.call_your_dog 1

execute if score #steps raycast_steps.call_your_dog <= #max raycast_steps.call_your_dog positioned ^ ^ ^0.1 run function call_your_dog:goat_horn_give/raycast
execute as @e[predicate=call_your_dog:callable,limit=1,tag=jodek.bind_target] run function jodek:api/data/get/owner with storage call_your_dog:root data

execute store success score &UUID_check call_your_dog.check run data modify storage call_your_dog:root data.Owner set from entity @s UUID

execute if score &UUID_check call_your_dog.check matches 1 run \
  return run function call_your_dog:app/feedback/fail {translate:"call_your_dog.fail.no_owner",fallback:"You're not the owner of this dog"}

execute if score &UUID_check call_your_dog.check matches 0 run function call_your_dog:app/bind/get_data
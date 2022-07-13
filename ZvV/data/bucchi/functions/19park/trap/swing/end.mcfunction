tag @s add vehicle
data modify entity @e[predicate=bucchi:vehicle,limit=1] Motion set value [0.0d, 1.0d, -1.0d]
summon minecraft:marker ~ ~ ~ {Tags: ["swing"]}
teleport @e[tag=swing,type=minecraft:marker] @s
kill @s
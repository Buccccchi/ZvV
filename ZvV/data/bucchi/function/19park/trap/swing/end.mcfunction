tag @s add Vehicle
data modify entity @e[predicate=bucchi:vehicle,limit=1] Motion set value [0.0d, 1.0d, -1.0d]
summon minecraft:marker ~ ~ ~ {Tags: ["Swing"]}
teleport @e[tag=Swing,type=minecraft:marker] @s
kill @s
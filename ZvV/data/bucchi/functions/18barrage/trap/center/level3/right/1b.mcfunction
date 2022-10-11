scoreboard players set $RandMax Global 360
execute store result entity @s Rotation[0] float 1 run function bucchi:random
scoreboard players set $RandMax Global 45
execute store result entity @s Rotation[1] float 1 run function bucchi:random
execute at @s run teleport @s ~ ~ ~ ~ ~-85

execute positioned 0.0 0 0.0 rotated as @s run summon minecraft:marker ^ ^ ^2 {Tags: ["Motion"]}
data modify entity @s Motion set from entity @e[tag=Motion,limit=1] Pos
kill @e[tag=Motion]
scoreboard players set $RandMax Global 360
execute store result entity @e[tag=O1,limit=1] Rotation[0] float 1 run function bucchi:random
execute at @e[tag=O1] run summon minecraft:marker ^ ^ ^2.5 {Tags: ["P", "Center"]}
execute as @e[tag=P] positioned as @s run teleport @s ~ ~ ~ facing 0 62 -200
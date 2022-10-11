scoreboard players set $RandMax Global 360
execute store result entity @e[tag=O1,limit=1] Rotation[0] float 1 run function bucchi:random
execute as @e[tag=O2] positioned as @s rotated as @e[tag=O1] run teleport @s ~ ~ ~ ~144 0
execute at @e[tag=O1] run summon minecraft:marker ^ ^ ^2.5 {Tags: ["P1", "Center"]}
execute at @e[tag=O2] run summon minecraft:marker ^ ^ ^5 {Tags: ["P2", "Center"]}
execute as @e[tag=Center] positioned as @s run teleport @s ~ ~ ~ facing 0 62 -200
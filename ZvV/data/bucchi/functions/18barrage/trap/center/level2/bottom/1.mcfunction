scoreboard players set $Time Global 4
scoreboard players set $RandMax Global 360
execute store result entity @e[tag=O1,limit=1] Rotation[0] float 1 run function bucchi:random
execute as @e[tag=O2] positioned as @s rotated as @e[tag=O1] run teleport @s ~ ~ ~ ~180 0
execute positioned 0 62 -200 rotated as @e[tag=Axis2,limit=2] rotated ~90 0 positioned ^ ^ ^1 rotated as @e[tag=Axis2,limit=2] positioned ^ ^ ^1 facing 0 62 -200 positioned 0 62 -200 positioned ^ ^ ^1 rotated as @e[tag=Axis2,limit=2] positioned ^ ^ ^1 facing 0 62 -200 positioned 0 62 -200 positioned ^ ^ ^1 rotated as @e[tag=Axis2,limit=2] positioned ^ ^ ^1 facing 0 62 -200 positioned 0 62 -200 run summon minecraft:marker ^ ^ ^1 {Tags: ["P", "Center"]}
execute as @e[tag=P] positioned as @s facing 0 62 -200 run teleport @s ~ ~ ~ ~180 0
execute if predicate bucchi:random/50 run tag @e[tag=P] add Right
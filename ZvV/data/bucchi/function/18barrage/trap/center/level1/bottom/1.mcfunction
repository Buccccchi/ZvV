scoreboard players set $Time Global 4
execute positioned 0 62 -200 rotated as @e[tag=Axis1,limit=2] rotated ~90 0 positioned ^ ^ ^1 rotated as @e[tag=Axis1,limit=2] positioned ^ ^ ^1 facing 0 62 -200 positioned 0 62 -200 positioned ^ ^ ^1 rotated as @e[tag=Axis1,limit=2] positioned ^ ^ ^1 facing 0 62 -200 positioned 0 62 -200 run summon minecraft:marker ^ ^ ^0.5 {Tags: ["P", "Center"]}
execute as @e[tag=P] positioned as @s run teleport @s ~ ~ ~ facing 0 62 -200
execute if predicate bucchi:random/50 run tag @e[tag=P] add Left
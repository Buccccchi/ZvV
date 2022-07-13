scoreboard players set $time obj 4
execute positioned 0 62 -200 rotated as @e[limit=2,tag=axis1] rotated ~90 0 positioned ^ ^ ^1 rotated as @e[limit=2,tag=axis1] positioned ^ ^ ^1 facing 0 62 -200 positioned 0 62 -200 positioned ^ ^ ^1 rotated as @e[limit=2,tag=axis1] positioned ^ ^ ^1 facing 0 62 -200 positioned 0 62 -200 run summon minecraft:area_effect_cloud ^ ^ ^0.5 {Tags:["P","center"],Duration:2147483647,Radius:0f}
execute as @e[tag=P] positioned as @s run teleport @s ~ ~ ~ facing 0 62 -200
loot replace block 0 16 0 container.0 loot bucchi:random/2
execute if block 0 16 0 minecraft:furnace{Items:[{Count:1b}]} run tag @e[tag=P] add left
#execute if predicate bucchi:random/50 run tag @e[tag=P] add left
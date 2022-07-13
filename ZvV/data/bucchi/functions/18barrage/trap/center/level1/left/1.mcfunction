scoreboard players set $time obj 5
loot replace block 0 16 0 container.0 loot bucchi:random/2
execute if block 0 16 0 minecraft:furnace{Items:[{Count:1b}]} at @e[tag=corner] rotated ~45 0 run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["center1_2A","P"],Duration:2147483647,Radius:0f}
#execute if predicate bucchi:random/50 at @e[tag=corner] rotated ~45 0 run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["center1_2A","P"],Duration:2147483647,Radius:0f}
execute unless entity @e[tag=center1_2A] at @e[tag=corner] rotated ~-45 0 run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["center1_2B","P"],Duration:2147483647,Radius:0f}
execute as @e[tag=P] positioned as @s facing entity @e[limit=1,sort=nearest,tag=corner] feet positioned as @e[limit=1,sort=nearest,tag=corner] run teleport @s ~ 63.49 ~ ~ 0
scoreboard players set $time obj 4
loot replace block 0 16 0 container.0 loot bucchi:random/2
execute if block 0 16 0 minecraft:furnace{Items:[{Count:1b}]} at @e[tag=axis1] rotated ~45 0 run summon minecraft:area_effect_cloud ^ ^ ^2.5 {Tags:["center2_2A","P1"],Duration:2147483647,Radius:0f}
#execute if predicate bucchi:random/50 at @e[tag=corner] rotated ~45 0 run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["center2_2A","P"],Duration:2147483647,Radius:0f}
execute unless entity @e[tag=center2_2A] at @e[tag=corner,tag=!axis1] rotated ~-45 0 run summon minecraft:area_effect_cloud ^ ^ ^2.5 {Tags:["center2_2B","P1"],Duration:2147483647,Radius:0f}
execute as @e[tag=P1] positioned as @s facing entity @e[limit=1,sort=nearest,tag=corner] feet run teleport @s ~ 63.49 ~ ~ 0
summon minecraft:area_effect_cloud 0 65 -200 {Tags:["P2","top"],Duration:2147483647,Radius:0f}
summon minecraft:area_effect_cloud 0 65 -200 {Tags:["P2","bottom"],Duration:2147483647,Radius:0f}
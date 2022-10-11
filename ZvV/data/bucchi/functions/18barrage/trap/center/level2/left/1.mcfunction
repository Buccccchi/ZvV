scoreboard players set $Time Global 4
execute if predicate bucchi:random/50 at @e[tag=Axis1] rotated ~45 0 run summon minecraft:marker ^ ^ ^2.5 {Tags: ["Center2_2A", "P1"]}
execute unless entity @e[tag=Center2_2A] at @e[tag=Corner,tag=!Axis1] rotated ~-45 0 run summon minecraft:marker ^ ^ ^2.5 {Tags: ["Center2_2B", "P1"]}
execute as @e[tag=P1] positioned as @s facing entity @e[tag=Corner,sort=nearest,limit=1] feet run teleport @s ~ 63.49 ~ ~ 0
summon minecraft:marker 0 65 -200 {Tags: ["P2", "Top"]}
summon minecraft:marker 0 65 -200 {Tags: ["P2", "Bottom"]}
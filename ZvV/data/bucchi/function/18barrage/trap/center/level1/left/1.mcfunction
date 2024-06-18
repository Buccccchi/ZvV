scoreboard players set $Time Global 5
execute if predicate bucchi:random/50 at @e[tag=Corner] rotated ~45 0 run summon minecraft:marker ^ ^ ^1 {Tags: ["Center1_2A", "P"]}
execute unless entity @e[tag=Center1_2A] at @e[tag=Corner] rotated ~-45 0 run summon minecraft:marker ^ ^ ^1 {Tags: ["Center1_2B", "P"]}
execute as @e[tag=P] positioned as @s facing entity @e[tag=Corner,sort=nearest,limit=1] feet positioned as @e[tag=Corner,sort=nearest,limit=1] run teleport @s ~ 63.49 ~ ~ 0
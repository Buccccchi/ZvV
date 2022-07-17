execute positioned as @e[tag=block,tag=fighter] if block ~ 66 ~ minecraft:air run summon minecraft:marker ~ 66 ~ {Tags: ["block", "count"]}
execute positioned as @e[tag=block,tag=fighter] if block ~ 66 ~ minecraft:air run setblock ~ 66 ~ minecraft:blue_ice keep
scoreboard players add @e[tag=block] block 1
execute positioned as @e[tag=count,scores={block=40..}] run setblock ~ ~ ~ minecraft:air destroy
kill @e[tag=count,scores={block=40..}]
tag @e[tag=block,scores={block=40..}] remove block
scoreboard players set @e[scores={block=40..}] block 0
execute positioned as @e[tag=Block,tag=Fighter] if block ~ 66 ~ minecraft:air run summon minecraft:marker ~ 66 ~ {Tags: ["Block", "Count"]}
execute positioned as @e[tag=Block,tag=Fighter] if block ~ 66 ~ minecraft:air run setblock ~ 66 ~ minecraft:diamond_block keep
scoreboard players add @e[tag=Block] Block 1
execute positioned as @e[tag=Count,scores={Block=40..}] run setblock ~ ~ ~ minecraft:air destroy
kill @e[tag=Count,scores={Block=40..}]
tag @e[tag=Block,scores={Block=40..}] remove Block
scoreboard players set @e[scores={Block=40..}] Block 0
spreadplayers 200 -100 0 12 false @e[tag=Center]
execute positioned as @e[tag=Center] if block ~ 64 ~ #bucchi:water if block ~ 63 ~ minecraft:dirt run summon minecraft:falling_block ~ 63 ~ {BlockState: {Name: "minecraft:dirt"}}
execute positioned as @e[tag=Center] if block ~ 64 ~ #bucchi:water if block ~ 63 ~ minecraft:mud run summon minecraft:falling_block ~ 63 ~ {BlockState: {Name: "minecraft:mud"}}
execute positioned as @e[tag=Center] if block ~ 64 ~ #bucchi:water unless block ~ 63 ~ minecraft:structure_void run particle minecraft:splash ~ 65 ~ 0.1 0.5 0.1 1 50 force
execute positioned as @e[tag=Center] if block ~ 64 ~ #bucchi:water run setblock ~ 63 ~ minecraft:structure_void
execute positioned as @e[tag=Center] if block ~ 64 ~ #bucchi:water run fill ~ 59 ~ ~ 62 ~ minecraft:air
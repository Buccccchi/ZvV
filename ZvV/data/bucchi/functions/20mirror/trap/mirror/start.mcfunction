execute if entity @s[type=minecraft:zombie] positioned as @s rotated as @e[tag=mirror] positioned ^ ^ ^1000 facing 200 ~ -200 positioned ^ ^ ^2000 rotated as @e[tag=mirror] run summon minecraft:drowned ^ ^ ^1000 {Tags: ["start", "fighter", "false"], Team: "nopush", NoAI: 1b, IsBaby: 0b}
execute if entity @s[type=minecraft:villager] positioned as @s rotated as @e[tag=mirror] positioned ^ ^ ^1000 facing 200 ~ -200 positioned ^ ^ ^2000 rotated as @e[tag=mirror] run summon minecraft:villager ^ ^ ^1000 {Tags: ["start", "fighter", "false"], Team: "nopush", NoAI: 1b, Xp: -2147483648, VillagerData: {type: "minecraft:snow"}}
execute if entity @s[type=minecraft:villager] run data modify entity @e[tag=start,limit=1] VillagerData.profession set from entity @s VillagerData.profession
scoreboard players operation @e[tag=start] id = @s id
tag @e[tag=start] remove start
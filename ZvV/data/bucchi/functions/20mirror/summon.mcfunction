loot replace block 0 16 0 container.0 loot bucchi:random/14
#Attributes: [{Name: "minecraft:generic.max_health", Base: 100.0d}], Health: 100.0f, 
execute positioned as @e[tag=standby,tag=zombie] run summon minecraft:zombie ~ ~ ~ {IsBaby: 0b}
execute if block 0 16 0 minecraft:furnace{Items: [{Count: 1b}]} positioned as @e[tag=standby,tag=villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:armorer", type: "minecraft:plains"}}
execute if block 0 16 0 minecraft:furnace{Items: [{Count: 2b}]} positioned as @e[tag=standby,tag=villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:butcher", type: "minecraft:plains"}}
execute if block 0 16 0 minecraft:furnace{Items: [{Count: 3b}]} positioned as @e[tag=standby,tag=villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:cartographer", type: "minecraft:plains"}}
execute if block 0 16 0 minecraft:furnace{Items: [{Count: 4b}]} positioned as @e[tag=standby,tag=villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:cleric", type: "minecraft:plains"}}
execute if block 0 16 0 minecraft:furnace{Items: [{Count: 5b}]} positioned as @e[tag=standby,tag=villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:farmer", type: "minecraft:plains"}}
execute if block 0 16 0 minecraft:furnace{Items: [{Count: 6b}]} positioned as @e[tag=standby,tag=villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:fisherman", type: "minecraft:plains"}}
execute if block 0 16 0 minecraft:furnace{Items: [{Count: 7b}]} positioned as @e[tag=standby,tag=villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:fletcher", type: "minecraft:plains"}}
execute if block 0 16 0 minecraft:furnace{Items: [{Count: 8b}]} positioned as @e[tag=standby,tag=villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:leatherworker", type: "minecraft:plains"}}
execute if block 0 16 0 minecraft:furnace{Items: [{Count: 9b}]} positioned as @e[tag=standby,tag=villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:librarian", type: "minecraft:plains"}}
execute if block 0 16 0 minecraft:furnace{Items: [{Count: 10b}]} positioned as @e[tag=standby,tag=villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:mason", type: "minecraft:plains"}}
execute if block 0 16 0 minecraft:furnace{Items: [{Count: 11b}]} positioned as @e[tag=standby,tag=villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:nitwit", type: "minecraft:plains"}}
execute if block 0 16 0 minecraft:furnace{Items: [{Count: 12b}]} positioned as @e[tag=standby,tag=villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:shepherd", type: "minecraft:plains"}}
execute if block 0 16 0 minecraft:furnace{Items: [{Count: 13b}]} positioned as @e[tag=standby,tag=villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:toolsmith", type: "minecraft:plains"}}
execute if block 0 16 0 minecraft:furnace{Items: [{Count: 14b}]} positioned as @e[tag=standby,tag=villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:weaponsmith", type: "minecraft:plains"}}
function bucchi:standby
execute unless score $standby obj matches 0 run function bucchi:20mirror/summon
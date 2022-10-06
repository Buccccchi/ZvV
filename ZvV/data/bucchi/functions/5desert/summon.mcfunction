execute store result score $Random Global run function bucchi:random
scoreboard players set $Temp Global 14
scoreboard players operation $Random Global %= $Temp Global
execute positioned as @e[tag=Standby,tag=Zombie] run summon minecraft:zombie ~ ~ ~ {IsBaby: 0b}
execute if score $Random Global matches 0 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:armorer", type: "minecraft:desert"}}
execute if score $Random Global matches 1 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:butcher", type: "minecraft:desert"}}
execute if score $Random Global matches 2 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:cartographer", type: "minecraft:desert"}}
execute if score $Random Global matches 3 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:cleric", type: "minecraft:desert"}}
execute if score $Random Global matches 4 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:farmer", type: "minecraft:desert"}}
execute if score $Random Global matches 5 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:fisherman", type: "minecraft:desert"}}
execute if score $Random Global matches 6 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:fletcher", type: "minecraft:desert"}}
execute if score $Random Global matches 7 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:leatherworker", type: "minecraft:desert"}}
execute if score $Random Global matches 8 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:librarian", type: "minecraft:desert"}}
execute if score $Random Global matches 9 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:mason", type: "minecraft:desert"}}
execute if score $Random Global matches 10 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:nitwit", type: "minecraft:desert"}}
execute if score $Random Global matches 11 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:shepherd", type: "minecraft:desert"}}
execute if score $Random Global matches 12 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:toolsmith", type: "minecraft:desert"}}
execute if score $Random Global matches 13 positioned as @e[tag=Standby,tag=Villager] run summon minecraft:villager ~ ~ ~ {Xp: -2147483648, VillagerData: {profession: "minecraft:weaponsmith", type: "minecraft:desert"}}
function bucchi:standby
execute unless score $Standby Global matches 0 run function bucchi:5desert/summon
# 召喚
scoreboard players set $RandMax Global 7
function bucchi:random
execute if score $Random Global matches 0 positioned as @e[tag=Witch] run summon minecraft:potion ~ ~1 ~ {Tags: ["Potion"], Fire: 2s, Item: {id: "minecraft:splash_potion", Count: 1b, tag: {Potion: "minecraft:swiftness"}}}
execute if score $Random Global matches 1 positioned as @e[tag=Witch] run summon minecraft:potion ~ ~1 ~ {Tags: ["Potion"], Fire: 2s, Item: {id: "minecraft:splash_potion", Count: 1b, tag: {Potion: "minecraft:slowness"}}}
execute if score $Random Global matches 2 positioned as @e[tag=Witch] run summon minecraft:potion ~ ~1 ~ {Tags: ["Potion"], Fire: 2s, Item: {id: "minecraft:splash_potion", Count: 1b, tag: {Potion: "minecraft:healing"}}}
execute if score $Random Global matches 3 positioned as @e[tag=Witch] run summon minecraft:potion ~ ~1 ~ {Tags: ["Potion"], Fire: 2s, Item: {id: "minecraft:splash_potion", Count: 1b, tag: {Potion: "minecraft:harming"}}}
execute if score $Random Global matches 4 positioned as @e[tag=Witch] run summon minecraft:potion ~ ~1 ~ {Tags: ["Potion"], Fire: 2s, Item: {id: "minecraft:splash_potion", Count: 1b, tag: {Potion: "minecraft:strong_regeneration"}}}
execute if score $Random Global matches 5 positioned as @e[tag=Witch] run summon minecraft:potion ~ ~1 ~ {Tags: ["Potion"], Fire: 2s, Item: {id: "minecraft:splash_potion", Count: 1b, tag: {Potion: "minecraft:strength"}}}
execute if score $Random Global matches 6 positioned as @e[tag=Witch] run summon minecraft:potion ~ ~1 ~ {Tags: ["Potion"], Fire: 2s, Item: {id: "minecraft:splash_potion", Count: 1b, tag: {Potion: "minecraft:weakness"}}}
# 向き
#execute store result score $Random Global run function bucchi:random
#scoreboard players set $Temp Global 360
#scoreboard players operation $Random Global %= $Temp Global
#execute store result entity @e[tag=Rotation,limit=1] Rotation[0] float 1 run scoreboard players get $Random Global
#execute positioned 0.0 0 0.0 rotated as @e[tag=Rotation] run teleport @e[tag=Rotation] ^ ^ ^0.8
execute as @e[tag=Rotation] positioned as @e[tag=Witch] facing entity @e[tag=Fighter,sort=nearest,limit=1] feet rotated ~ 0 positioned 0.0 0 0.0 run teleport @s ^ ^ ^0.8
data modify entity @e[tag=Potion,limit=1] Motion set from entity @e[tag=Rotation,limit=1] Pos
tag @e[tag=Potion] remove Potion
# 繰り返し防止
tag @e[tag=Witch] add StopWitch
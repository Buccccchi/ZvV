#魚
execute if score $Random Global matches 0 run effect give @e[type=minecraft:zombie,nbt={HandItems: [{id: "minecraft:cod", Count: 1b}, {}]}] minecraft:instant_health
execute if score $Random Global matches 1 positioned as @e[type=minecraft:zombie,nbt={HandItems: [{id: "minecraft:salmon", Count: 1b}, {}]}] run summon minecraft:potion ~ ~0.5 ~ {Item: {id: "minecraft:splash_potion", Count: 1b, tag: {Potion: "minecraft:healing"}}}
execute if score $Random Global matches 2 positioned as @e[type=minecraft:zombie,nbt={HandItems: [{id: "minecraft:tropical_fish", Count: 1b}, {}]}] run summon minecraft:fireball ~ ~10 ~ {Motion: [0.0d, -1.5d, 0.0d], ExplosionPower: 1}
execute if score $Random Global matches 3 run effect give @e[type=minecraft:zombie,nbt={HandItems: [{id: "minecraft:pufferfish", Count: 1b}, {}]}] minecraft:wither 5 1
execute as @e[type=minecraft:zombie,tag=!DontKill] run data remove entity @s HandItems[0]
#試合終了
execute if score ゾンビ Count matches 0 run function bucchi:end
execute if score 村人 Count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end
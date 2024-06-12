#> bucchi:9cave/main
#
# 洞窟ステージ
# 毎tick実行されるメイン処理
#
# @private

# 奈落
    kill @e[tag=!DontKill,x=50,y=-16,z=150,dx=100,dy=16,dz=100]

# クリーパー
    scoreboard players add @e[tag=Creeper] Global 1
    execute if entity @e[tag=Creeper,scores={Global=29}] run fill 98 63 198 102 63 202 minecraft:air replace minecraft:dirt
    execute if entity @e[tag=Creeper,scores={Global=29}] run particle minecraft:explosion 100 64 200 1.5 1.5 1.5 0 50 force

# コウモリ
    scoreboard players add @e[tag=Bat] Global 1
    execute if entity @e[tag=Bat,scores={Global=100}] as @e[tag=Bat,scores={Global=100}] positioned as @s run summon minecraft:potion ~ ~ ~ {Item: {id: "minecraft:splash_potion", count: 1, components: {"minecraft:potion_contents": {potion: "minecraft:healing"}}}}
    execute if entity @e[tag=Bat,scores={Global=100}] run scoreboard players set @e[tag=Bat,scores={Global=100}] Global 0

# 燃焼
    execute as @e[type=!minecraft:villager,x=110.5,y=65,z=190.5,distance=..2] run data modify entity @s Fire set value 200s
    execute positioned as @e[type=!minecraft:villager,x=110.5,y=65,z=190.5,distance=..2] run particle minecraft:lava ~ ~ ~ 0 0 0 0 0 force
    teleport @e[type=minecraft:villager,predicate=bucchi:lava] 108 65 192


# 自動バランス確認時に試合時間を計測
    execute if data storage global {Auto: 1b} run scoreboard players add $経過tick Count 1

# 試合終了
    execute if score ゾンビ Count matches 0 run function bucchi:end {"stage": "9cave"}
    execute if score 村人 Count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end {"stage": "9cave"}
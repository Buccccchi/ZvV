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
    execute if entity @e[tag=Bat,scores={Global=200}] as @e[tag=Bat,scores={Global=200}] positioned as @s run summon minecraft:potion ~ ~ ~ {Item: {id: "minecraft:splash_potion", count: 1, components: {"minecraft:potion_contents": {potion: "minecraft:healing"}}}}
    execute if entity @e[tag=Bat,scores={Global=200}] run scoreboard players set @e[tag=Bat,scores={Global=200}] Global 0

# 鍾乳石
    execute if block 94 67 206 minecraft:stone_pressure_plate[powered=true] unless score $Dripstone Global matches ..4 run scoreboard players set $Dripstone Global 0
    execute if score $Dripstone Global matches ..4 run scoreboard players add $Dripstone Global 1
    execute if score $Dripstone Global matches 1 positioned as @n[type=minecraft:zombie,tag=!DontKill,x=94.5,y=67,z=206.5] run function bucchi:9cave/trap/dripstone

# 燃焼
    execute as @e[type=!minecraft:villager,x=110.5,y=65,z=195.5,distance=..1.5] run data modify entity @s Fire set value 200s
    execute positioned as @e[type=!minecraft:villager,x=110.5,y=65,z=195.5,distance=..1.5] run particle minecraft:lava ~ ~ ~ 0 0 0 0 0 force

# 砂利沈下
    execute if data storage minecraft:global {GravelSink: 0b} unless block 92 64 192 minecraft:heavy_weighted_pressure_plate if block 92 63 191 minecraft:gravel run setblock 92 62 192 minecraft:repeating_command_block{Command: "/execute if entity @e[type=minecraft:zombie,x=90,y=64,z=190,dx=6,dy=0,dz=6] run function bucchi:9cave/trap/gravel_fall"}
    execute if data storage minecraft:global {GravelSink: 0b} unless block 92 64 192 minecraft:heavy_weighted_pressure_plate if block 92 63 191 minecraft:gravel run setblock 92 64 192 minecraft:heavy_weighted_pressure_plate
    execute if data storage minecraft:global {GravelSink: 1b} unless block 91 68 191 minecraft:heavy_weighted_pressure_plate[power=0] if block 92 67 191 minecraft:gravel run function bucchi:9cave/trap/gravel_sink


# 自動バランス確認時に試合時間を計測
    execute if data storage minecraft:global {Auto: 1b} run scoreboard players add $Tick Auto 1

# 試合終了
    execute if score ゾンビ Count matches 0 run function bucchi:end {"stage": "9cave"}
    execute if score 村人 Count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end {"stage": "9cave"}
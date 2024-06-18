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

# ウーパールーパー
    scoreboard players add @e[tag=Axolotl,scores={Global=..-1}] Global 1
    execute as @e[tag=Axolotl,nbt=!{Brain: {memories: {"minecraft:play_dead_ticks": {}}}}] unless score @s Global matches ..-1 positioned as @s store result score @s Global if entity @e[type=minecraft:zombie,distance=..2]
    execute if entity @e[tag=Axolotl,scores={Global=3..}] positioned as @e[tag=Axolotl,scores={Global=3..}] as @e[type=minecraft:zombie,distance=..2] run damage @s 4.0 minecraft:mob_attack by @n[tag=Axolotl]
    execute if entity @e[tag=Axolotl,scores={Global=3..}] run scoreboard players set @e[tag=Axolotl,scores={Global=3..}] Global -20

# 水流
    execute if block 107 67 207 minecraft:stone_pressure_plate[powered=false] run setblock 102 63 210 minecraft:redstone_block
    execute if block 107 67 207 minecraft:stone_pressure_plate[powered=true ] run setblock 102 63 210 minecraft:stone

# 鍾乳石
    execute unless block 94 67 206 minecraft:heavy_weighted_pressure_plate[power=0] unless score $Dripstone Global matches 0..9 run scoreboard players set $Dripstone Global 0
    execute if score $Dripstone Global matches 0..9 run scoreboard players add $Dripstone Global 1
    execute if score $Dripstone Global matches 1 positioned as @n[type=minecraft:zombie,tag=!DontKill,x=94.5,y=67,z=206.5] run summon minecraft:falling_block ~ ~2 ~ {FallHurtAmount: 4.0f, FallHurtMax: 40, HurtEntities: 1b, BlockState: {Name: "minecraft:pointed_dripstone", Properties: {thickness: "tip", vertical_direction: "down"}}}
    execute if score $Dripstone Global matches 1 positioned as @n[type=minecraft:zombie,tag=!DontKill,x=94.5,y=67,z=206.5] run summon minecraft:falling_block ~ ~3 ~ {BlockState: {Name: "minecraft:pointed_dripstone", Properties: {thickness: "frustum", vertical_direction: "down"}}}
    execute if score $Dripstone Global matches 1 positioned as @n[type=minecraft:zombie,tag=!DontKill,x=94.5,y=67,z=206.5] run summon minecraft:falling_block ~ ~4 ~ {BlockState: {Name: "minecraft:pointed_dripstone", Properties: {thickness: "base", vertical_direction: "down"}}}

# 燃焼
    execute as @e[type=!minecraft:villager,x=110.5,y=65,z=190.5,distance=..2] run data modify entity @s Fire set value 200s
    execute positioned as @e[type=!minecraft:villager,x=110.5,y=65,z=190.5,distance=..2] run particle minecraft:lava ~ ~ ~ 0 0 0 0 0 force
    teleport @e[type=minecraft:villager,predicate=bucchi:lava] 108 65 192


# 自動バランス確認時に試合時間を計測
    execute if data storage global {Auto: 1b} run scoreboard players add $経過tick Count 1

# 試合終了
    execute if score ゾンビ Count matches 0 run function bucchi:end {"stage": "9cave"}
    execute if score 村人 Count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end {"stage": "9cave"}
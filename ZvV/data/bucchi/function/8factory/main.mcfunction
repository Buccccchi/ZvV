#> bucchi:8factory/main
#
# 工場ステージ
# 毎tick実行されるメイン処理
#
# @private

# TNTトロッコ
    execute if entity @e[type=minecraft:tnt_minecart,nbt={TNTFuse: 1}] run fill 100 64 105 100 64 108 minecraft:air
    execute if entity @e[type=minecraft:tnt_minecart,nbt={TNTFuse: 1}] run setblock 100 63 105 minecraft:lava
    execute if entity @e[type=minecraft:tnt_minecart,nbt={TNTFuse: 1}] run teleport @e[type=minecraft:tnt_minecart,nbt={TNTFuse: 1}] 100 65 106.0

# 荷物
    scoreboard players remove @e[type=minecraft:zombie,scores={Global=1..}] Global 1
    execute positioned as @e[type=minecraft:chest_minecart] run scoreboard players set @e[type=minecraft:zombie,scores={Global=0},distance=..1] Global 20
    execute as @e[type=minecraft:zombie,scores={Global=20}] positioned as @s run teleport @s ~ ~6 ~

# 金床
    execute if entity @e[type=minecraft:falling_block,x=106,y=65,z=94,distance=..1] run function bucchi:8factory/trap/anvil_land

# 燃焼
    execute unless score $Burn Global matches 1.. positioned as @e[tag=Core] if entity @e[type=minecraft:zombie,y=65,distance=..1,nbt={Fire: -1s}] run scoreboard players set $Burn Global 1
    execute if score $Burn Global matches 1.. positioned as @e[tag=Core] run function bucchi:8factory/trap/burn

# 切断機
    execute if entity @e[tag=Cutting] as @e[tag=Cutting] positioned as @s positioned ~ ~ ~-1 align xz run function bucchi:8factory/trap/cutter
    execute as @e[tag=Cutter,tag=!Cutting] positioned as @s positioned ~ ~ ~-1 align xz if entity @e[type=minecraft:zombie,dx=0,dy=1,dz=0] run data merge entity @s {start_interpolation: -1, interpolation_duration: 2, transformation: {right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 2.0f, 2.0f], left_rotation: {axis: [-1.0f, 0.0f, 0.0f], angle: 1.570796327f}, translation: [-0.5f, 0.0f, 0.5f]}}
    execute as @e[tag=Cutter,tag=!Cutting] positioned as @s positioned ~ ~ ~-1 align xz if entity @e[type=minecraft:zombie,dx=0,dy=1,dz=0] run tag @s add Cutting


# 自動バランス確認時に試合時間を計測
    execute if data storage minecraft:global {Auto: 1b} run scoreboard players add $Tick Auto 1

# 試合終了
    execute if score ゾンビ Count matches 0 run function bucchi:end {"stage": "8factory"}
    execute if score 村人 Count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end {"stage": "8factory"}
#> bucchi:7rotation/main
#
# 回転ステージ
# 毎tick実行されるメイン処理
#
# @private

# 奈落
    kill @e[tag=!DontKill,x=50,y=-16,z=-50,dx=100,dy=16,dz=100]

# 着弾した矢を消去
    kill @e[type=minecraft:arrow,nbt={inGround: 1b}]

# 炎回転用エンティティに着火タグを付与
    execute as @e[tag=Fire,tag=!RedFire,tag=!BlueFire,predicate=!bucchi:air] positioned as @s if block ~ ~ ~ minecraft:fire run tag @s add RedFire
    execute as @e[tag=Fire,tag=!RedFire,tag=!BlueFire,predicate=!bucchi:air] positioned as @s if block ~ ~ ~ minecraft:soul_fire run tag @s add BlueFire


# 自動バランス確認時に試合時間を計測
    execute if data storage minecraft:global {Auto: 1b} run scoreboard players add $Tick Auto 1

# 試合終了
    execute if score ゾンビ Count matches 0 run function bucchi:end {"stage": "7rotation"}
    execute if score 村人 Count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end {"stage": "7rotation"}
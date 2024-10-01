#> bucchi:2nether/main
#
# ネザーステージ
# 毎tick実行されるメイン処理
#
# @private

# ネザーゲート
    execute in the_nether run kill @e[tag=!DontKill,x=-500,y=0,z=-500,dx=1000,dy=256,dz=1000]

# 発火
    execute positioned as @e[tag=Fire] run setblock ~ ~0.2 ~ minecraft:fire keep


# 自動バランス確認時に試合時間を計測
    execute if data storage minecraft:global {Auto: 1b} run scoreboard players add $Tick Auto 1

# 試合終了
    execute if score ゾンビ Count matches 0 run function bucchi:end {"stage": "2nether"}
    execute if score 村人 Count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end {"stage": "2nether"}
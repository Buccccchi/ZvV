#> bucchi:22carry/main
#
# 運搬ステージ
# 毎tick実行されるメイン処理
#
# @private

# 奈落
    kill @e[tag=!DontKill,x=150,y=-16,z=-50,dx=100,dy=16,dz=100]

# 運搬
    execute as @e[tag=Falling] positioned as @s unless block ~ ~ ~ air run function bucchi:22carry/trap/carry/set_block
    execute as @e[tag=Roll] at @s align xyz if entity @e[dx=0,dy=0,dz=-0.1] run function bucchi:22carry/trap/carry/rolling_south
    execute as @e[tag=Slide] at @s run function bucchi:22carry/trap/carry/slide
    execute as @e[tag=Sliding] at @s run function bucchi:22carry/trap/carry/sliding


# 自動バランス確認時に試合時間を計測
    execute if data storage global {Auto: 1b} run scoreboard players add $経過tick Count 1

# 試合終了
    execute if score ゾンビ Count matches 0 run function bucchi:end
    execute if score 村人 Count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end
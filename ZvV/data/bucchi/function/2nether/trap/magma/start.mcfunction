#> bucchi:2nether/trap/magma/start
#
# ネザーステージ
# マグマブロック融解開始
#
# @private

# 村人ワープ
    teleport @e[type=minecraft:villager,tag=!DontKill,x=-100,y=65,z=92,dx=0,dy=0,dz=0] -100 65 90

# マグマブロックを溶岩に置き換え
    fill -102 64 90 -98 64 94 minecraft:lava replace minecraft:magma_block

# 融解終了をスケジュール
    schedule function bucchi:2nether/trap/magma/end 1s append
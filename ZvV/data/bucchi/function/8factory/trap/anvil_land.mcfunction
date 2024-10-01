#> bucchi:8factory/trap/anvil_land
#
# 工場ステージ
# 金床の着地
#
# @within function bucchi:8factory/main

# ダメージ
    execute as @e[type=minecraft:zombie,x=105,y=65,z=93,dx=2,dy=0,dz=2] run damage @s 6.0
    execute as @e[type=minecraft:zombie,x=105,y=65,z=93,dx=2,dy=0,dz=2] run data modify entity @s Motion[1] set value 0.3d

# 演出
    particle minecraft:crit 106 65 94 0.7 0 0.7 0.2 100 force
    playsound minecraft:block.anvil.land master @a 106 65 94 1.3
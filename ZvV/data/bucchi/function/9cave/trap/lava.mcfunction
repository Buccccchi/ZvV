#> bucchi:9cave/trap/lava
#
# 洞窟ステージ
# 燃焼
#
# @private

# 溶岩垂れ流し
    setblock 110 64 190 minecraft:obsidian

# 燃焼
    particle minecraft:flame 110 65.5 190 1.5 0.3 1.5 0.1 400 force
    execute as @a positioned as @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 0.5 1
    execute as @e[type=!minecraft:villager,x=106,y=65,z=190,dx=4,dy=1,dz=4] positioned as @s if block ~ 64 ~ minecraft:obsidian run data modify entity @s Fire set value 200s
    execute as @e[type=!minecraft:villager,x=106,y=65,z=190,dx=4,dy=1,dz=4] positioned as @s if block ~ 64 ~ minecraft:obsidian run particle minecraft:lava ~ ~ ~ 0 0 0 0 10 force
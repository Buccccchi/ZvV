#> bucchi:9cave/trap/lava
#
# 洞窟ステージ
# 燃焼
#
# @private

# 溶岩垂れ流し
    setblock 110 64 195 minecraft:obsidian

# 燃焼
    particle minecraft:flame 110 65.5 195 1.2 0.3 1.2 0.1 200 force
    playsound minecraft:entity.blaze.shoot master @s 110 65 195 2 1
    execute as @e[type=!minecraft:villager,x=108,y=65,z=192,dx=2,dy=1,dz=6] positioned as @s if block ~ 64 ~ minecraft:obsidian run data modify entity @s Fire set value 200s
    execute as @e[type=!minecraft:villager,x=108,y=65,z=192,dx=2,dy=1,dz=6] positioned as @s if block ~ 64 ~ minecraft:obsidian run particle minecraft:lava ~ ~ ~ 0 0 0 0 10 force
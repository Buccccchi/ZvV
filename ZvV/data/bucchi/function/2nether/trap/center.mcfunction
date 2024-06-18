#> bucchi:2nether/trap/center
#
# ネザーステージ
# 中央の罠
#
# @private

# 火の玉
    summon minecraft:fireball ~ ~11 ~ {Motion: [0.0d, -1.5d, 0.0d], ExplosionPower: 2}

# 村人回復
    effect give @e[type=minecraft:villager,x=-100,y=65,z=100,dx=0,dy=0,dz=0] minecraft:instant_health 1 0 true

# 消火
    fill -110 64 90 -90 70 110 minecraft:air replace #minecraft:fire
    setblock -110 65 91 minecraft:fire
    setblock -109 65 90 minecraft:fire
    setblock -90 65 91 minecraft:fire
    setblock -91 65 90 minecraft:fire
    setblock -90 69 110 minecraft:fire
    setblock -110 69 110 minecraft:fire
tag @e[distance=0,tag=True,limit=1] add Target
tag @s add Alive
tag @e[tag=Target] add Alive
# 線対称移動
execute rotated as @e[tag=Mirror] positioned ^ ^ ^1000 facing 200 ~ -200 positioned ^ ^ ^2000 rotated as @e[tag=Mirror] run teleport @s ^ ^ ^1000
execute positioned ^ ^ ^-1 rotated as @e[tag=Mirror] positioned ^ ^ ^1000 facing entity @e[tag=Target] feet rotated ~ 0 positioned ^ ^ ^2000 rotated as @e[tag=Mirror] positioned ^ ^ ^1000 facing entity @e[tag=Target] feet positioned as @s run teleport @s ~ ~ ~ ~ ~
# 体力
execute unless score @s Health = @e[tag=Target,limit=1] Health run function bucchi:20mirror/trap/mirror/health
# 重複
execute if entity @s[distance=..0.5] unless score @s Global matches 1.. run function bucchi:20mirror/trap/mirror/overlap
# ジャンプ
execute unless block 200 65 -193 minecraft:heavy_weighted_pressure_plate[power=0] run function bucchi:20mirror/trap/mirror/jump

tag @e[tag=Target] remove Target
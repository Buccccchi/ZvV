tag @e[distance=0,tag=true,limit=1] add target
execute if entity @s[type=minecraft:drowned,nbt={OnGround: 0b},x=190,y=64,z=-210,dx=20,dy=0,dz=20] run teleport @e[tag=target] ~ ~-0.08 ~
#線対称移動
execute rotated as @e[tag=mirror] positioned ^ ^ ^1000 facing 200 ~ -200 positioned ^ ^ ^2000 rotated as @e[tag=mirror] run teleport @s ^ ^ ^1000
execute positioned ^ ^ ^-1 rotated as @e[tag=mirror] positioned ^ ^ ^1000 facing entity @e[tag=target] feet positioned ^ ^ ^2000 rotated as @e[tag=mirror] positioned ^ ^ ^1000 facing entity @e[tag=target] feet positioned as @s run teleport @s ~ ~ ~ ~ ~
#重複
execute if entity @s[type=minecraft:drowned,distance=..0.5] run effect give @s minecraft:wither 1 1 true
execute if entity @s[type=minecraft:villager,distance=..0.5] unless score @s obj matches 1.. run function bucchi:20mirror/trap/mirror/overlap
#体力
execute unless score @s health = @e[tag=target,limit=1] health run function bucchi:20mirror/trap/mirror/health

tag @e[tag=target] remove target
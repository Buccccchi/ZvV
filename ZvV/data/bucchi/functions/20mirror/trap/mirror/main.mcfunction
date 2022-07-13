tag @e[distance=0,limit=1] add target
execute if entity @s[type=minecraft:zombie,nbt={OnGround: 0b}] run teleport @e[tag=target] ~ ~-0.08 ~
execute rotated as @e[tag=mirror] positioned ^ ^ ^1000 facing 200 ~ -200 positioned ^ ^ ^2000 rotated as @e[tag=mirror] run teleport @s ^ ^ ^1000
execute positioned ^ ^ ^-1 rotated as @e[tag=mirror] positioned ^ ^ ^1000 facing entity @e[tag=target] feet positioned ^ ^ ^2000 rotated as @e[tag=mirror] positioned ^ ^ ^1000 facing entity @e[tag=target] feet positioned as @s run teleport @s ~ ~ ~ ~ ~
tag @e[tag=target] remove target
fill 90 65 109 110 65 110 minecraft:air replace #minecraft:anvil
execute as @e[type=minecraft:villager] positioned as @s if block ~ ~-0.1 ~ minecraft:command_block[facing=east] run teleport @s ~0.1 ~ ~
execute as @e[type=minecraft:villager] positioned as @s if block ~ ~-0.1 ~ minecraft:command_block[facing=west] run teleport @s ~-0.1 ~ ~
execute as @e[type=minecraft:villager] positioned as @s if block ~ ~-0.1 ~ minecraft:command_block[facing=south] run teleport @s ~ ~ ~0.1
execute as @e[type=!minecraft:villager] positioned as @s if block ~-0.5 ~-0.1 ~ minecraft:chain_command_block[facing=east] run teleport @s ~0.1 ~ ~
execute as @e[type=!minecraft:villager] positioned as @s if block ~0.5 ~-0.1 ~ minecraft:chain_command_block[facing=west] run teleport @s ~-0.1 ~ ~
execute positioned as @e[type=minecraft:chest_minecart] as @e[type=minecraft:zombie,distance=..1] positioned as @s run teleport @s ~ ~6 ~
execute as @e[type=minecraft:chest_minecart] positioned as @s unless block ~ 64 ~ minecraft:chain_command_block run teleport @s ~ ~0.2 ~
execute as @e[type=minecraft:chest_minecart] positioned as @s if block ~ ~ ~ minecraft:iron_block run kill @s
kill @e[type=minecraft:zombie,tag=!dontkill,x=89,y=86,z=89,dx=22,dy=10,dz=22]
execute if entity @e[type=minecraft:tnt_minecart,nbt={TNTFuse:1}] run fill 100 64 105 100 64 108 minecraft:air
teleport @e[type=minecraft:tnt_minecart,nbt={TNTFuse:1}] 100 65 106.0
#試合終了
execute if score ゾンビ count matches 0 run function bucchi:end
execute if score 村人 count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end
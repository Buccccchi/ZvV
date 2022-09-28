execute as @e[type=minecraft:villager,x=180,y=67,z=-102,dx=7,dy=1,dz=4] at @s run teleport @s ~0.05 ~ ~
#試合終了
execute if score ゾンビ count matches 0 run function bucchi:end
execute if score 村人 count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end
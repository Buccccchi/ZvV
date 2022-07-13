#ネザーゲート
execute in the_nether run kill @e[tag=!dontkill,x=-500,y=0,z=-500,dx=1000,dy=256,dz=1000]
#発火
execute positioned as @e[tag=fire] run setblock ~ ~0.2 ~ minecraft:fire keep
#試合終了
execute if score ゾンビ count matches 0 run function bucchi:end
execute if score 村人 count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end
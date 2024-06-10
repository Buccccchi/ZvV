# ネザーゲート
execute in the_nether run kill @e[tag=!DontKill,x=-500,y=0,z=-500,dx=1000,dy=256,dz=1000]

# 発火
execute positioned as @e[tag=Fire] run setblock ~ ~0.2 ~ minecraft:fire keep

# 試合終了
execute if score ゾンビ Count matches 0 run function bucchi:end
execute if score 村人 Count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end
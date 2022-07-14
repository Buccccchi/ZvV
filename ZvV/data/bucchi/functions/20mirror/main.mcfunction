#奈落
kill @e[tag=!dontkill,x=50,y=-16,z=-250,dx=100,dy=16,dz=100]
#鏡
execute unless block 200 65 -200 minecraft:light_weighted_pressure_plate[power=0] run function bucchi:20mirror/trap/mirror/change
execute as @e[tag=false] at @e[tag=true] if score @s obj = @e[distance=0,limit=1] obj run function bucchi:20mirror/trap/mirror/main
execute positioned as @e[tag=false] run particle minecraft:entity_effect ~ ~2 ~ 0 0 0 0 0
execute positioned 200 65 -200 
#TESTAAA
#試合終了
execute if score ゾンビ count matches 0 run function bucchi:end
execute if score 村人 count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end
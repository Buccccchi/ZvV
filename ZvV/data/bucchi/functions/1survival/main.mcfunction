#かかしの矢
effect clear @e[type=minecraft:zombie] minecraft:slowness
effect give @e[type=minecraft:zombie,x=5.5,y=65,z=90.5,dx=5,dy=2,dz=5] minecraft:slowness 1 1 true
execute if entity @e[type=minecraft:zombie,x=5.5,y=65,z=90.5,dx=5,dy=2,dz=5] if entity @e[tag=kakashi] unless score $kakashi obj matches 0..9 run scoreboard players set $kakashi obj 0
execute if score $kakashi obj matches 0..9 run function bucchi:1survival/trap/kakashi
kill @e[type=minecraft:arrow,nbt={inGround: 1b}]
#試合終了
execute if score ゾンビ count matches 0 run function bucchi:end
execute if score 村人 count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end
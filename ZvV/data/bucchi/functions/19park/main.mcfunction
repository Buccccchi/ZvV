#奈落
kill @e[tag=!dontkill,x=50,y=-16,z=-250,dx=100,dy=16,dz=100]
#シーソー
execute if entity @e[x=109,y=66.5,z=-196,dx=0,dy=0,dz=0] unless entity @e[tag=seesaw] run function bucchi:19park/trap/seesaw/left
execute if entity @e[x=105,y=66.5,z=-196,dx=0,dy=0,dz=0] unless entity @e[tag=seesaw] run function bucchi:19park/trap/seesaw/right
#ブランコ
execute if entity @e[tag=swing] run function bucchi:19park/trap/swing/main
execute if entity @e[type=minecraft:zombie,x=93.0,y=67,z=-191,distance=..0.8] unless entity @e[tag=swing] as @e[type=minecraft:zombie,x=93.0,y=67,z=-191,distance=..0.8,limit=1] run function bucchi:19park/trap/swing/start
#滑り台
scoreboard players add @e[tag=slide] Global 1
execute if block 100 69 -194 minecraft:oak_pressure_plate[powered=true] as @e[type=minecraft:zombie,tag=,x=100,y=69,z=-194,dx=0,dy=0,dz=0] run function bucchi:19park/trap/slide/start
execute as @e[tag=slide] positioned as @s run teleport @s ~ ~-0.25 ~-0.25
execute if entity @e[tag=slide,scores={Global=17}] as @e[tag=slide,scores={Global=17}] run function bucchi:19park/trap/slide/end
#試合終了
execute if score ゾンビ Count matches 0 run function bucchi:end
execute if score 村人 Count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end
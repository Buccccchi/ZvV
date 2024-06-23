execute as @e[type=minecraft:villager,x=180,y=67,z=-102,dx=7,dy=1,dz=4] at @s run teleport @s ~0.05 67 ~
# 奈落
kill @e[tag=!DontKill,x=150,y=-16,z=-150,dx=100,dy=16,dz=100]
# カエル
execute if block 208 65 -96 minecraft:mangrove_pressure_plate[powered=true] unless entity @e[tag=StopFrog] run function bucchi:21swamp/trap/frog
execute if block 208 65 -96 minecraft:mangrove_pressure_plate[powered=false] if entity @e[tag=StopFrog] run tag @e[tag=StopFrog] remove StopFrog
execute if block 200 65 -107 minecraft:oak_pressure_plate[powered=true] unless entity @e[tag=StopKill] run kill @e[tag=Frog,sort=random,limit=1]
execute if block 200 65 -107 minecraft:oak_pressure_plate[powered=true] unless entity @e[tag=StopKill] run tag @a[limit=1] add StopKill
execute if block 200 65 -107 minecraft:oak_pressure_plate[powered=false] if entity @e[tag=StopKill] run tag @e[tag=StopKill] remove StopKill
# スライム
tag @e[tag=!Slime,type=minecraft:slime,nbt={OnGround: 0b}] add Slime 
execute if entity @e[tag=Slime,nbt={OnGround: 1b}] run function bucchi:21swamp/trap/slime
execute if block 192 65 -104 minecraft:spruce_pressure_plate[powered=true] unless entity @e[tag=StopSlime] run summon minecraft:slime 192 65 -104 {Tags: ["Vehicle"], Size: 0, Health: 1.0f, Passengers: [{id: "minecraft:marker", Tags: ["Death"]}]}
execute if block 192 65 -104 minecraft:spruce_pressure_plate[powered=true] unless entity @e[tag=StopSlime] run tag @a[limit=1] add StopSlime
execute if block 192 65 -104 minecraft:spruce_pressure_plate[powered=false] if entity @e[tag=StopSlime] run tag @e[tag=StopSlime] remove StopSlime
# スライムボール
execute positioned as @e[tag=Death,predicate=!bucchi:vehicle] run summon minecraft:item ~ ~ ~ {Tags: ["SlimeBall"], Item: {id: "minecraft:slime_ball", Count: 1b}}
kill @e[tag=Death,predicate=!bucchi:vehicle]
execute if entity @e[type=minecraft:zombie,nbt={HandItems: [{id: "minecraft:slime_ball"}, {}]}] as @e[type=minecraft:zombie,nbt={HandItems: [{id: "minecraft:slime_ball"}, {}]}] run function bucchi:21swamp/trap/ball
execute positioned as @e[tag=SlimeBall] if predicate bucchi:random/20 run particle minecraft:dust{color: [0.2, 1.0, 0.2], scale: 1.0} ~ ~1 ~ 0 0 0 0 0 force
# ウィッチ
execute if block 190 67 -91 minecraft:oak_pressure_plate[powered=true] unless entity @e[tag=StopWitch] run function bucchi:21swamp/trap/witch
execute if block 190 67 -91 minecraft:oak_pressure_plate[powered=false] if entity @e[tag=StopWitch] run tag @e[tag=StopWitch] remove StopWitch
# 芽の雨
execute positioned as @e[type=minecraft:zombie,x=208.5,y=65,z=-107.5,distance=..6] if block ~ 63 ~ minecraft:mangrove_leaves run function bucchi:21swamp/trap/mangrove
execute if entity @e[tag=Start] positioned as @e[tag=Start] run summon minecraft:falling_block ~ ~ ~ {Tags: ["Propagule"], BlockState: {Name: "minecraft:mangrove_propagule", Properties: {hanging: "true", age: "4"}}}
execute if entity @e[tag=Start] run kill @e[tag=Start]
execute positioned as @e[tag=Propagule] run effect give @e[type=minecraft:zombie,distance=..1] minecraft:wither 1 1 true
# キノコ
effect give @e[type=minecraft:zombie,x=196.5,y=65,z=-88.5,distance=..1] minecraft:wither 10 0
execute positioned as @e[type=minecraft:zombie,x=196.5,y=65,z=-88.5,distance=..1] run particle minecraft:soul ~ ~0.8 ~ 0.2 0.5 0.2 0 1
# 試合終了
execute if score ゾンビ Count matches 0 run function bucchi:end
execute if score 村人 Count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end
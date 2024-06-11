# 奈落
kill @e[tag=!DontKill,x=50,y=-16,z=-50,dx=100,dy=16,dz=100]

# コウモリ
scoreboard players add @e[tag=Bat] Global 1
execute if entity @e[tag=Bat,scores={Global=100}] as @e[tag=Bat,scores={Global=100}] positioned as @s run summon minecraft:potion ~ ~ ~ {Item: {id: "minecraft:splash_potion", count: 1, components: {"minecraft:potion_contents": {potion: "minecraft:healing"}}}}
execute if entity @e[tag=Bat,scores={Global=100}] run scoreboard players set @e[tag=Bat,scores={Global=100}] Global 0

# 燃焼
execute as @e[type=!minecraft:villager,x=110,y=65,z=190,distance=..2] run data modify entity @s Fire set value 200s
execute positioned as @e[type=!minecraft:villager,x=110,y=65,z=190,distance=..2] run particle minecraft:lava ~ ~ ~ 0 0 0 0 0 force
teleport @e[type=minecraft:villager,predicate=bucchi:lava] 108 65 192

# 試合終了
execute if score ゾンビ Count matches 0 run function bucchi:end {"stage": "9cave"}
execute if score 村人 Count matches 0 if block ~ ~-1 ~ minecraft:redstone_block run function bucchi:end {"stage": "9cave"}

# 自動バランス確認用
#scoreboard players add $経過tick Count 1
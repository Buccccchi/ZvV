teleport @e[type=minecraft:zombie,x=100,y=65,z=0,dx=0,dy=0,dz=0] 109 65 0
teleport @e[type=minecraft:villager,x=100,y=65,z=0,dx=0,dy=0,dz=0] 91 65 0
fill 89 65 -11 111 65 11 minecraft:dispenser[facing=up] replace minecraft:dispenser
execute if score $direction obj matches 0 run function bucchi:7rotation/trap/left
execute unless score $direction obj matches 0 run function bucchi:7rotation/trap/right
fill 98 64 -12 102 64 -12 minecraft:stone
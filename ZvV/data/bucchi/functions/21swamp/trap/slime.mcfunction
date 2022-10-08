execute positioned as @e[tag=Slime,nbt={OnGround: 1b}] run effect give @e[type=minecraft:zombie,distance=..1.5] minecraft:wither 1 1 true
execute positioned as @e[tag=Slime,nbt={OnGround: 1b}] run effect give @e[type=minecraft:zombie,distance=..1.5] minecraft:slowness 1 2 true
execute positioned as @e[tag=Slime,nbt={OnGround: 1b}] run particle minecraft:item_slime ~ ~ ~ 1 0 1 0 50
tag @e[tag=Slime,nbt={OnGround: 1b}] remove Slime
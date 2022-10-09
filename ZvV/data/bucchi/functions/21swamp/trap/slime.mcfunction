execute positioned as @e[tag=Slime,nbt={OnGround: 1b}] run effect give @e[type=minecraft:zombie,distance=..1.2] minecraft:wither 1 1 true
execute positioned as @e[tag=Slime,nbt={OnGround: 1b}] run effect give @e[type=minecraft:zombie,distance=..1.2] minecraft:slowness 1 2 true
execute positioned as @e[tag=Slime,nbt={OnGround: 1b}] run particle minecraft:item_slime ~ ~ ~ 0.8 0 0.8 0 30
tag @e[tag=Slime,nbt={OnGround: 1b}] remove Slime
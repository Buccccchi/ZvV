setblock ~ ~2 ~ minecraft:air
execute positioned ~-1 ~1.5 ~-1 run tag @e[type=minecraft:zombie,dx=1,dy=0,dz=1] add Fire1
tag @e[tag=Fire1] add Fire
schedule function bucchi:2nether/trap/fire1/end 3s append
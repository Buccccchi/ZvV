setblock ~ ~2 ~ minecraft:air
execute positioned ~-1 ~1.5 ~-1 run tag @e[type=minecraft:zombie,dx=1,dy=0,dz=1] add fire1
tag @e[tag=fire1] add fire
schedule function bucchi:2nether/trap/fire1/end 3s append